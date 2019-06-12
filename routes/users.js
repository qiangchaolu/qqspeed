const express=require("express");
var pool=require("../pool");
var router=express.Router();

router.get("/",(req,res)=>{
    var uname=req.query.username;
    var upwd=req.query.password;
    var sql="SELECT * FROM speed_user WHERE uname=? AND upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:1,msg:"登陆成功"});
        }else{
            res.send({code:-1,msg:"登录失败"});
        }
    })
})



module.exports=router;