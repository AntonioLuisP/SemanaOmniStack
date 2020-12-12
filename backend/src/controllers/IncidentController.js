const connection = require('../database/connection');

module.exports = {
    async index(request, response) {
        const ongs = await connection('ongs').select('*')
        return response.json(ongs)
    },
    async create(request, response) {
        const { title, description, value } = request.body;
        const ong_id = request.headers.autori

        await connection('ongs').insert({
            title,
            description,
            value,
            ong_id,

        })
        return response.json({ id });
    }
}