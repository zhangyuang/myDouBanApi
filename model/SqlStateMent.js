//封装sql语句
var douban = {
	insert: 'INSERT INTO movielist SET ?',
	queryByKind: 'SELECT * FROM movielist WHERE kind = ? limit ?, ?',
	updateByName: 'UPDATE movielist SET ? WHERE name = ?',
};
module.exports = douban;