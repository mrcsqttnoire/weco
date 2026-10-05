import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/css/acceuil.css',
                'resources/css/comment.css',
                'resources/css/aside.css',
                'resources/css/FormPublication.css',
                'resources/css/login.css',
                'resources/css/style.css',
                'resources/js/app.js'
            ],
            refresh: true,
        }),
    ],
});
