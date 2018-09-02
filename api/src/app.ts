import * as express from "express";
import * as stringify from "json-stable-stringify";

let PORT = 5000;

const app = express();

app.get("/", (req, res) => {
    res.contentType("text/plain");
    res.send("Hello World\n");
});

app.get("/state", (req, res) => {
    const state = {"a":3,"b":[{"x":4,"y":5,"z":6},7],"c":8};
    res.contentType("application/json");
    res.send(stringify(state, { space: "    " }) + "\n");
});

if (process.argv.length >= 3)
    PORT = parseInt(process.argv[2]);
app.listen(PORT, () => {
    console.log("Listening on port " + PORT);
});
