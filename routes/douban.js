var express = require('express')
var SqlMethod = require('../SqlMethod/index')
var router = express.Router()
router.get('/', function (req, res, next) {
  res.send('respond with a resource')
});
//增加用户
router.post('/addMovie', function (req, res, next) {
	SqlMethod.addMovie(req, res, next)
})
router.get('/queryByKind', function (req, res ,next) {
	SqlMethod.queryByKind(req, res, next)
})
router.post('/updateByName', function (req, res, next) {
	SqlMethod.updateByName(req, res, next)
})
module.exports = router;
