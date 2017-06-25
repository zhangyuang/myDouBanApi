//封装sql语句
var douban = {
	insert: 'INSERT INTO movielist SET ?',
	queryByKind: 'SELECT * FROM movielist WHERE kind = ?',
	updateByName: 'UPDATE movielist SET ? WhERE name = ?',
};
module.exports = douban;