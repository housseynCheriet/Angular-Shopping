const mysql= require('mysql');
const pool = mysql.createPool({
	connectionLimit: 10,
	host: "db4free.net",
	user: "housseyn",
	password: "housseyn-123",
	database: 'bzns_monster',
	port: '3306'

});

let shopDB={};

shopDB.mainCategory = async (mainId) => {

	mainCategory= await new Promise((resolve,reject) =>{
		sql='SELECT * FROM mainCategory ;'
		//console.log('mainCategory',sql)
		pool.query(sql,(err, results) => {
			if(err){
				return reject(err);
			}
			return resolve(results);
		});
	});
	subCategory=await shopDB.subCategory(mainId);
	return [mainCategory,subCategory[0],subCategory[1]];
};


shopDB.subCategory = async (mainId) => {

	subCategory= await new Promise((resolve,reject) =>{
		sql='SELECT * FROM subCategory WHERE mainCategoryId='+mainId+' ;'
		//console.log('subCategory',sql)
		pool.query(sql,(err, results) => {
			if(err){
				return reject(err);
			}
			return resolve(results);
		});
	});
	product=await shopDB.selectProduct(mainId, subCategory[0].id);
	return [subCategory,product];
	
};
shopDB.selectProduct = (mainId,subId) => {
	return new Promise((resolve,reject) =>{
		sql='SELECT * FROM products WHERE mainCategoryId='+mainId+' AND subCategoryId = '+subId+';'
		//console.log('selectProduct',sql)
		
		pool.query(sql,(err, results) => {
			if(err){
				return reject(err);
			}
			return resolve(results);
		});
	});
};
module.exports = shopDB;