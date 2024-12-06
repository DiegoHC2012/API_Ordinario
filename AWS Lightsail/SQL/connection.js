const mysql2 = require('mysql2');
require('dotenv').config();
const connection = mysql2.createConnection({
    host: 'mysql',
    user: 'pepe',
    password: '12345',
    database: 'ordinario_modelo_admin',
    port: 3306
});

module.exports= connection
