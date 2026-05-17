#!/usr/bin/env python3
import argparse
import struct

SIG = bytes.fromhex("EF 0E 4D 4C 61 00 00 00 00 00 51 01 00 00")

FILE_NAMES = [
    "A:ACCOCOLR.BIN",
    "A:ACCO.LZ",
    "A:COMPASS.LZ",
    "A:WATER.LZ",
    "A:WATEREGA.LZ",
    "A:CHASE.LZ",
    "A:BROKE.LZ",
    "A:BROKEGA.LZ",
    "A:PLAYDISK.DAT",
    "A:TITLCOLR.BIN",
    "A:TITLE2.LZ",
    "A:TITLE1.LZ",
    "A:TITL2COL.BIN",
    "A:TITLEANI.LZ",
    "A:TITLELET.LZ",
    "A:TITLEL2.LZ",
    "A:TITLECAR.LZ",
    "A:CREDCOLR.BIN",
    "A:CREDITC.LZ",
    "A:CREDITB.LZ",
    "A:CREDITA.LZ",
    "A:SC.BIN",
    "A:SIC.BIN",
    "A:COL.BIN",
    "A:T.BIN",
    "A:O.BIN",
    "A:P.BIN",
    "A:DATAA.DAT",
    "A:CCERVSC.BIN",
    "A:CCERV.BIC",
    "A:CCERV.ICN",
    "A:TOPCOLR.BIN",
    "A:TOPSCORC.LZ",
    "A:TOPSCORB.LZ",
    "A:TOPSCORA.LZ",
    "A:DATAB.DAT",
    "A:SELCOLR.BIN",
    "A:CCERVSIC.BIN",
    "A:OTWCOL.BIN",
    "A:CCERV.SIC",
    "A:SCENETT.SIC",
    "A:SCENETT..MUS",
    "A:THEME.MUS",
    "A:COPCOLR.BIN",
    "A:COPB.LZ",
    "A:COPA.LZ",
    "A:COPSEQ.LZ",
    "A:KEYCOLR.BIN",
    "A:KEYS.LZ",
    "A:MASTERQ.BIN",
    "A:CCERVFL1.LZ",
    "A:CCERV.SID",
    "A:CCERVFL2.LZ",
    "A:SCENETT.ICN",
    "A:SCENETT..COL",
    "A:SCENETT..BLZ",
    "A:DIFFCOLR.BIN",
    "A:DETAIL2.LZ",
    "A:SELECT.LZ",
    "A:DIFFLEVA.LZ",
    "A:DIFFLEVB.LZ",
    "A:DIFFLEVC.LZ",
    "A:SSBJ.LZ",
    "A:SCENETTT.BIN",
    "A:SCENETTO.BIN",
    "A:SCENETTP.BIN",
    "A:SCENETTA.DAT",
    "A:SCENETT1.DAT",
    "A:A.DAT",
    "A:1.DAT",
    "A:NEWWAVE.MUS",
    "A:INSTR.DAT",
    "A:CCERVCOL.BIN",
    "A:CCERV.ETC",
    "A:CCERVL.BOT",
    "A:CCERVR.BOT",
    "A:SCENETT..DAT",
    "A:CCERV.POB",
    "A:SCENETTP.DAT",
    "A:CCERV2.BOT",
    "A:CCERV1.BOT",
    "A:CCERV.TOP",
    "A:FL1.LZ",
    "A:FL2.LZ",
    "A:DETAIL1.LZ",
    "A:1.BOT",
    "A:2.BOT",
]


def mz_header_size(path):
    with open(path, "rb") as f:
        f.seek(0x08)
        cparhdr = struct.unpack("<H", f.read(2))[0]
    return cparhdr * 16


def seg_off_to_file(seg, off, hdr_size):
    # In a DOS MZ, file offset = (seg*16 + off) - header_size
    return (seg * 16 + off) - hdr_size


def find_signature(data):
    hits = []
    start = 0
    while True:
        idx = data.find(SIG, start)
        if idx == -1:
            break
        hits.append(idx)
        start = idx + 1
    return hits


def parse_table(data, start_off):
    entries = []
    i = 0
    while True:
        chunk = data[start_off + i : start_off + i + 14]
        if len(chunk) < 14:
            break
        key_low = chunk[0] | (chunk[1] << 8)
        key_high = chunk[2] | (chunk[3] << 8)
        if key_low == 0 and key_high == 0:
            break
        typ = chunk[4]
        offset = chunk[6] | (chunk[7] << 8) | (chunk[8] << 16) | (chunk[9] << 24)
        length = chunk[10] | (chunk[11] << 8) | (chunk[12] << 16) | (chunk[13] << 24)
        entries.append((i // 14, start_off + i, key_low, key_high, typ, offset, length))
        i += 14
    return entries, start_off + i


def tag_to_char(val):
    if 0x20 <= val <= 0x7E:
        return chr(val)
    return "."


def s8(val):
    val &= 0xFF
    return val - 0x100 if val & 0x80 else val


def strip_drive(name):
    if len(name) >= 2 and name[1] == ":":
        return name[2:]
    return name


def compute_keys(name):
    data = name.encode("ascii", "replace")
    # key_high: rolling hash from end to start, base 0x101.
    h = 0
    for b in reversed(data):
        h = (h * 0x101) & 0xFFFF
        h = (h + s8(b)) & 0xFFFF
    # key_low: sum of index*byte from 0..len-2.
    s = 0
    for i, b in enumerate(data[:-1]):
        s = (s + (s8(b) * i)) & 0xFFFF
    return s, h


def build_name_map(names):
    name_map = {}
    for name in names:
        key_low, key_high = compute_keys(strip_drive(name))
        name_map.setdefault((key_low, key_high), []).append(name)
    return name_map


def main():
    ap = argparse.ArgumentParser(description="Extract TD3 dseg:049E table")
    ap.add_argument("exe", help="Path to TD3.EXE")
    ap.add_argument("--key-for", help="Compute key_low/key_high for a name and exit")
    ap.add_argument(
        "--no-strip-drive",
        action="store_true",
        help="Do not strip leading drive letter (e.g., A:)",
    )
    ap.add_argument("--segment", type=lambda x: int(x, 0), help="Segment value (paragraphs)")
    ap.add_argument("--offset", type=lambda x: int(x, 0), help="Offset within segment (default 0x049E)")
    ap.add_argument("--start", type=lambda x: int(x, 0), help="Direct file offset (overrides segment/offset)")
    args = ap.parse_args()

    if args.key_for:
        name = args.key_for
        if not args.no_strip_drive:
            name = strip_drive(name)
        key_low, key_high = compute_keys(name)
        print(f"name    {name}")
        print(f"key_lo  {key_low:04X}")
        print(f"key_hi  {key_high:04X}")
        return

    with open(args.exe, "rb") as f:
        data = f.read()

    if args.start is not None:
        start_off = args.start
    elif args.segment is not None:
        off = args.offset if args.offset is not None else 0x049E
        hdr_size = mz_header_size(args.exe)
        start_off = seg_off_to_file(args.segment, off, hdr_size)
        if start_off < 0:
            raise SystemExit("Computed file offset is negative; check segment/offset.")
    else:
        hits = find_signature(data)
        if not hits:
            raise SystemExit("Signature not found; use --segment/--offset or --start.")
        if len(hits) > 1:
            raise SystemExit(f"Multiple signature hits: {hits}. Use --start to pick one.")
        start_off = hits[0]

    entries, term_off = parse_table(data, start_off)

    name_map = build_name_map(FILE_NAMES)

    print("index  key_lo key_hi chr  offset     length  names")
    for idx, off, key_low, key_high, tag, offset, length in entries:
        tag_chr = tag_to_char(tag)
        names = name_map.get((key_low, key_high), [])
        names_str = ", ".join(names) if names else "-"
        print(
            f"{idx:5d}  {key_low:04X}  {key_high:04X}  "
            f"{tag_chr}   {offset:08X}  {length:08X}  {names_str}"
        )
    print(f"-- terminator entry at file offset {term_off:06X} --")


if __name__ == "__main__":
    main()
