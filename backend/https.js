const express = require('express');
const path = require('path');
const fs = require('fs');
const app = express()
const cors = require('cors');

app.use(express.json());
app.use(cors());

app.get('/',(req, res) => {
    res.send("Not valid");
})

app.post('/add-profile', (req, res) => {
    const profileInfo = req.body;
    const _path = path.resolve("./backend/public/profiles.json");

    const file = fs.readFileSync(_path,"utf-8");
    const fileData = JSON.parse(file);
    
    if(fileData && fileData.list){
        fileData.list.push(profileInfo);
    }

    fs.writeFileSync(_path, JSON.stringify(fileData));
    res.end(JSON.stringify(fileData));
});

app.get('/profiles', (req,res) => {
    const _path = path.resolve("./backend/public/profiles.json");
    const file = fs.readFileSync(_path,"utf-8");
    res.end(file);
});

app.listen(9000, () => {
    console.log("Server started at 9000");
});
