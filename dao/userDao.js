//实现与mysql交互
var mysql = require('mysql');
var $conf = require('../config/mysql');
var $sql = require('../model/userModel');

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
	add: function (req, res, next) {
		pool.getConnection(function (err, connection) {
			//获取前台页面传来的参数
			var param = req.body;
			//建立连接，向表中插入值
			connection.query($sql.insert, [param.name, param.age], function (err, result) {
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
	deleteUser: function (req, res, next) {
		//delete by Id
		pool.getConnection(function (err, connection) {
			var id = req.body.id;
			connection.query($sql.deleteUser, id, function (err, result) {
				if(result.affectedRows > 0) {
					result = {
						code: 200,
						msg: '删除成功' + result.affectedRows + '行'
					}
				}
				else {
					result = void 0;
				}
				jsonWrite(res, result);
				connection.release();
			})
		})
	},
	update: function (req, res, next) {
		//update by Id
		pool.getConnection(function (err, connection) {
			var param = req.body;
			connection.query($sql.update, [param.name, param.age, param.id], function (err, result) {
				if(result.affectedRows >0) {
					result = {
						code: 200,
						msg: '更新成功' + result.affectedRows + '行'
					}
				}
				jsonWrite(res, result);
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