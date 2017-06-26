//封装sql语句
var douban = {
	insert: 'INSERT INTO movielist SET ?',
	queryAll: 'SELECT * FROM movielist',
	queryByKind: 'SELECT * FROM movielist WHERE kind = ? limit ?, ?',
	updateByName: 'UPDATE movielist SET ? WHERE name = ?',
};
module.exports = douban;