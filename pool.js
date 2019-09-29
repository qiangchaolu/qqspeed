//创建mysql连接池
const mysql = require('mysql');
var pool = mysql.createPool({
    host: 'w.rdc.sae.sina.com.cn',
    user: 'jjj5n3xll4',
    password: 'y2z4w3j2l50klmw5lj4jmi3k3y3hj0z24zmlkj00',
    database: 'app_qspeeds',
    connectionLimit: 10
});
//把创建好的连接池导出
module.exports = pool;