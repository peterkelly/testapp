import * as express from "express";

let PORT = 5000;

const app = express();

app.get("/", (req, res) => {
    res.contentType("text/plain");
    res.send("Hello from Messages service\n");
});

if (process.argv.length >= 3)
    PORT = parseInt(process.argv[2]);
app.listen(PORT, () => {
    console.log("Listening on port " + PORT);
});
