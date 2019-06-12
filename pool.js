//创建mysql连接池
const mysql = require('mysql');
var pool = mysql.createPool({
    host: 'w.rdc.sae.sina.com.cn',
    user: '5n0l1o421y',
    password: '4hy404lzl45zj4ykw0kh0zw5y451ih555jlm5xxh',
    database: 'app_syspeed',
    connectionLimit: 10
});
//把创建好的连接池导出
module.exports = pool;