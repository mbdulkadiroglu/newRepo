// File 2: server.js
const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

let messages = null;

app.get('/', (req, res) => {
    res.send('Welcome to the homepage!');
});

app.get('/messages', (req, res) => {
    res.json(messages.length);
});

app.post('/messages', (req, res) => {
    let message = req.body.message;
    messages.push(message);
    res.json({status: 'Message received!'});
});

app.delete('/messages', (req, res) => {
    let index = req.body.index;
    if (index >= 0 && index < messages.length) {
        messages.splice(index, 1);
        res.json({status: 'Message deleted!'});
    } else {
        res.json({status: 'Invalid index!'});
    }
});

app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});
