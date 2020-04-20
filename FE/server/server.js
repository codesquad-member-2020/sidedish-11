const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = process.env.PORT || 5000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/api/', (req, res) => {
    res.send([
        {
            id: '1'
        },
        {
            id: '2',
        },
        {
            id: '3',
        }
    ]);
});

app.listen(port, () => console.log(`Listening on port ${port}`));