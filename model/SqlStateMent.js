//封装sql语句
var douban = {
	insert: 'INSERT INTO movielist SET ?',
	queryByKind: 'select * from movielist where kind = ?',
};
module.exports = douban;