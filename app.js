const http = require('http');
const id = require('uuid').v4();

const server = http.createServer((req, res) => {
    console.log(`Received request for URL: ${req.url}`);

    res.writeHead(200);
    res.end(`Hello World, from ${id}`);
});

server.listen(8080);

console.log('Server is up and running at http://localhost:8080');