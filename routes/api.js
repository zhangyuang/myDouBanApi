var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  if(req.query && req.query.callback) {
  	res.jsonp({status: 200, message: '这是一个jsonp接口', data: {'name': 'zhangyuang', 'age': '19'} })
  }
  else {
  	res.json({status: 200, message: '这是一个json接口', data: {'name': 'zhangyuang', 'age': '19'} })
  }
});

module.exports = router;
