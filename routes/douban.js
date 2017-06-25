var express = require('express');
var SqlMethod = require('../SqlMethod/index');
var router = express.Router();
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});
//增加用户
router.post('/addMovie', function (req, res, next) {
	SqlMethod.addMovie(req, res, next)
});
router.get('/queryAll', function (req, res, next) {
	SqlMethod.queryAll(req, res, next);
});
router.get('/query', function (req, res ,next) {
	SqlMethod.queryById(req, res, next);
})
module.exports = router;
