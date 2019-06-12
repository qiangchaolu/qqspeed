const express=require("express");
var pool=require("../pool");
var router=express.Router();

//查询赛道图
router.get('/',(req,res)=>{
    var sql="SELECT * FROM speed_sd"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//查询赛道缩略图
router.get('/sdsl',(req,res)=>{
    var sql="SELECT * FROM speed_sd_sl"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//查询载具图
router.get('/zj',(req,res)=>{
    var sql="SELECT * FROM speed_zj"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//查询载具缩略图
router.get('/zjsl',(req,res)=>{
    var sql="SELECT * FROM speed_zj_sl"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//查询载具图
router.get('/cw',(req,res)=>{
    var sql="SELECT * FROM speed_cw"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//查询载具缩略图
router.get('/cwsl',(req,res)=>{
    var sql="SELECT * FROM speed_cw_sl"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})


module.exports=router;