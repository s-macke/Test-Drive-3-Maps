import { defineConfig } from 'vite';
import { resolve } from 'path';
import { fileURLToPath } from 'url';

const __dirname = fileURLToPath(new URL('.', import.meta.url));

export default defineConfig({
  publicDir: 'public',
  resolve: {
    alias: {
      '@shared': resolve(__dirname, 'src/shared'),
      '@browser': resolve(__dirname, 'src/browser')
    }
  },
  build: {
    outDir: 'dist'
  }
});
