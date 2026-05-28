const mysql = require('mysql2');


/*
== COMPLETAR ==
Podemos usar supabase
*/
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'senha do banco',//incompleto
    database: 'nome do banco',//incompleto
    port: '3306' //3307, alterar se necessario
});



db.connect(err =>{
    if(err) throw err;
    console.log('Conectado ao banco de dados');
});

module.exports = db;