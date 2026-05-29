const mysql = require('mysql2');

/*
== COMPLETAR ==
Podemos usar supabase
*/

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'senha do banco',//incompleto
    database: 'biblioteca',
    port: '3307'
});

db.connect(err =>{
    if(err) throw err;
    console.log('Conectado ao banco de dados');
});

module.exports = db;