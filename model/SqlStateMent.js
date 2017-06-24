//封装sql语句
var douban = {
	insert: 'INSERT INTO movielist SET ?',
	update: 'update ? set list = ?',
	queryByKind: 'select * from ?',
};
module.exports = douban;