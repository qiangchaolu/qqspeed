//创建mysql连接池
const mysql = require('mysql');
var pool = mysql.createPool({
    host: 'w.rdc.sae.sina.com.cn',
    user: 'j0kz22jlmy',
    password: 'h2xjy31zl1wwh53m1x4yx32yk02xw03w4zkwlh53',
    database: 'app_speedsy',
    connectionLimit: 10
});
//把创建好的连接池导出
module.exports = pool;