var express = require('express')
var SqlMethod = require('../SqlMethod/index')
var router = express.Router()
router.get('/', function (req, res, next) {
  res.send('respond with a resource')
});
//增加用户
router.all('/addMovie', function (req, res, next) {
	SqlMethod.addMovie(req, res, next)
})
router.all('/queryAll', function (req, res, next) {
	SqlMethod.queryAll(req, res, next)
})
router.all('/queryByKind', function (req, res ,next) {
	SqlMethod.queryByKind(req, res, next)
})
router.all('/queryHotEmoji', function (req, res ,next) {
	SqlMethod.queryHotEmoji(req, res, next)
})
router.all('/updateByName', function (req, res, next) {
	SqlMethod.updateByName(req, res, next)
})
//模糊查询
router.all('/queryByName', function (req ,res, next) {
	SqlMethod.queryByName(req, res, next)
})
module.exports = router;
