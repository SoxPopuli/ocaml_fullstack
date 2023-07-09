const path = require('path');

const buildDir = path.resolve(__dirname, './_build/default/client/client/client');
const staticDir = path.join(buildDir, 'static');

module.exports = {
    mode: 'development',
    entry: path.join(buildDir, 'client.js'),
    output: {
        filename: 'index.js',
        path: staticDir,
    },
    devServer: {
        static: {
            directory: staticDir,
        }
    }
};
