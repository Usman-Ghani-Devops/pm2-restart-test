const http = require("http");

const PORT = process.env.PORT || 3000;

const APP_SECRET = process.env.APP_SECRET;

if (!APP_SECRET) {
    throw new Error("APP_SECRET environment variable is missing");
}

const server = http.createServer((req, res) => {
    res.writeHead(200, {
        "Content-Type": "text/plain"
    });

    res.end("Node.js application is running on the ec2!");
});

server.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
