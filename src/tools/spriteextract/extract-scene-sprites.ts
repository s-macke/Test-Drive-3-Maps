#!/usr/bin/env tsx

import fs from 'node:fs/promises';
import path from 'node:path';
import {
    extractSceneSprites,
    renderSceneSpritePng,
    sceneSpriteBanks,
    type SceneSprite,
    type SceneSpriteBankSpec,
} from '../../shared/scene-sprites.js';
import { buildPalette, createDefaultPalette, sanitizeFileComponent } from '../../shared/td3-image.js';

function buildOutputPath(sprite: SceneSprite): string {
    const bankDir = sanitizeFileComponent(`${sprite.bankId}_SPRITES`);
    const firstReference = sprite.references[0];
    const name = [
        `sprite_0x${sprite.recordOffset.toString(16).toLowerCase()}`,
        `r${firstReference.rootIndex.toString().padStart(2, '0')}`,
        `v${firstReference.variantIndex.toString().padStart(2, '0')}`,
        `${sprite.width}x${sprite.height}`,
    ].join('_');
    return path.join('images', bankDir, `${name}.png`);
}

async function readBankData(bank: SceneSpriteBankSpec): Promise<Uint8Array> {
    const absolutePath = path.join(process.cwd(), 'public', 'base', bank.datFile);
    const buffer = await fs.readFile(absolutePath);
    return new Uint8Array(buffer);
}

async function exportBank(bank: SceneSpriteBankSpec): Promise<number> {
    const fileData = await readBankData(bank);
    const sprites = extractSceneSprites(bank, fileData);
    const palette = bank.paletteLayers && bank.paletteLayers.length > 0
        ? buildPalette(new Map([[bank.datFile, fileData]]), bank.paletteLayers)
        : createDefaultPalette();

    for (const sprite of sprites) {
        const outputPath = path.join(process.cwd(), buildOutputPath(sprite));
        await fs.mkdir(path.dirname(outputPath), { recursive: true });
        await fs.writeFile(outputPath, renderSceneSpritePng(sprite, palette));
    }

    return sprites.length;
}

async function main(): Promise<void> {
    let total = 0;
    for (const bank of sceneSpriteBanks) {
        const count = await exportBank(bank);
        total += count;
        console.log(`${bank.id}: exported ${count} unique sprites.`);
    }
    console.log(`Exported ${total} unique scene sprites.`);
}

main().catch((error) => {
    const message = error instanceof Error ? error.message : 'Unknown error';
    console.error(message);
    process.exit(1);
});
