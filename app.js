const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Hello from Express running in a container!");
});

app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});
