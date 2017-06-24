//实现与mysql交互
var mysql = require('mysql');
var $conf = require('../config/mysql-config');
var $sql = require('../model/SqlStateMent');

//使用连接池，提升性能
var pool = mysql.createPool($conf.mysql);

//向前台返回JSON方法的简单封装
var jsonWrite = function (res, ret) {
	if(typeof ret === 'undefined') {
		res.json({
			'code': '1',
			'msg': '操作失败'
		})
	}
	else {
		res.json(ret)
	}
};
module.exports = {
	addMovie: function (req, res, next) {
		pool.getConnection(function (err, connection) {
			//获取前台页面传来的参数
			//建立连接，向表中插入值
			var params = req.body
			connection.query($sql.insert, { name: params.name, rating: params.rating, imgUrl: params.imgUrl, description: params.description, kind: params.kind }, function (err, result) {
				console.log(err)
				if(result) {
					result = {
						code: 200,
						msg: '增加成功'
					}
				}
				//以json形式，把操作结果返回给前台界面
				jsonWrite(res, result);
				//释放连接
				connection.release();
			})
		})
	},
	queryById: function (req, res, next) {
		var id = req.query.id;//为了拼凑正确的sql语句，这里要转下整数
		pool.getConnection(function (err, connection) {
			connection.query($sql.queryById, id,function (err, result) {
				jsonWrite(res, result);
				connection.release();
			})
		})
	},
	queryAll: function (req, res, next) {
		pool.getConnection(function (err, connection) {
			connection.query($sql.queryAll, function (err, result) {
				jsonWrite(res, result);
				connection.release();
			})
		})
	}
}