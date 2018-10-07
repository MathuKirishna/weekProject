const express =require('express');
const router = express.Router();
const mysql = require('mysql')



var connection = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'db_cutecut'
});
connection.connect(function(error){

    if(!!error) {
            console.log('Error');
    } else {
        console.log('connected');
    }
});

router.get('/search',(req,res)=>{
    var query = "SELECT * FROM db_cutecut.tb_user where tb_user.city='"+req.query.city+"'";
    connection.query("SELECT * FROM db_cutecut.tb_user where tb_user.city='"+req.query.city+"'",function(error,rows,fields){

        if(!!error){
            console.log('Error while proceding query');
            console.log(query);
        }else{
            console.log('Successfully query proceded.');
            console.log(rows);
            res.send(rows);
        }
    });
});

module.exports = router;