const express=  require('express');
const db= require('../db');

const router =  express.Router();


router.get('/product', async (req, res, next) => {

  const mainId = req.query.mainId;
  const subId = req.query.subId;
  

  try{
		let results = await db.selectProduct(mainId,subId);
		res.json(results);
	}catch(e){
		console.log(e)
		res.sendStatus(500)
	}
});
router.get('/mainCategory', async (req, res, next) => {
	const mainId = req.query.mainId;
	const subId = req.query.subId;
  try{
		let results = await db.mainCategory(mainId,subId);
		res.json(results);
	}catch(e){
		console.log(e)
		res.sendStatus(500)
	}
});
router.get('/subCategory', async (req, res, next) => {
	const mainId = req.query.mainId;
  const subId = req.query.subId;
    
  try{
		//let results = await db.subCategory(mainId,subId);
		let results = await db.subCategory(mainId,subId);;
		res.json(results);
	}catch(e){
		console.log(e)
		res.sendStatus(500)
	}
});

module.exports= router;


