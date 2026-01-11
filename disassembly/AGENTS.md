# AGENTS

## Project context
- Reverse engineering project for Test Drive 3 (DOS, 16-bit x86).
- Original binary: `TD3.EXE`.
- Primary artifact is an IDA-generated disassembly (`td3.asm`).
- Program entry point: `seg031:001A`.

## Conventions
- `td3.asm` must never be modified.
- Keep IDA-style labels, segment names, and addresses intact unless explicitly asked to rename them.
- Use ASCII in comments; keep annotations short and focused.
- When adding notes, prefer creating new Markdown files (for example, `notes/*.md`) over embedding long commentary in `td3.asm`.

## Workflow
- Prefer ripgrep (`rg`) for searches.
- If you need to reference or derive new information, document the source and reasoning in a note file.
- Chunk manifest lives at `functions/manifest.md`.
