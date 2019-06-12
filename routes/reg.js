const express=require("express");
var pool=require("../pool");
var router=express.Router();

router.get("/",(req,res)=>{
    var $uname=req.query.username;
    var $upwd=req.query.password;
    var $tel=req.query.tel;
    var sql="INSERT INTO speed_user(uname,upwd,phone) VALUES";
    sql+="(?,?,?)";
    pool.query(sql,[$uname,$upwd,$tel],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:1,msg:"注册成功"});
        }
    })
})

module.exports=router;