const express=require("express");
var pool=require("../pool");
var router=express.Router();

router.get("/",(req,res)=>{
    var sql="SELECT fid,title FROM speed_footer_title"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
module.exports=router;