const express = require('express');

const app = express()

app.get('/', (request, response) => {
    // return response.send('Hello World')
    return response.json({
        evento: 'Semana omnistack',
        aluno: 'Antoni Luis'

    });
});


app.listen(3333)