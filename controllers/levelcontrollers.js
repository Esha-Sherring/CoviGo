// * Utils
const { check, validationResult } = require('express-validator');

// * Models
const Level = require('../models/level');

//Route to add Level details
    module.exports.addLevel = async (req, res) => {
      console.log('place order route');
      const errors = validationResult(req);
      if (!errors.isEmpty()) {
      return res.status(400).send('error occured');
      }
      else
      {
              try{
                const {temperature, oxygen} = req.body;
                const newLevel = new Level({
                  temperature,
                  oxygen,
                  createdBy:req.user._id
                });
                console.log(newLevel)
                newLevel.save();
                return res.json(newLevel).status(200);
              }catch(err){
                console.log(err)
                return res.status(404).send({ error: "Server error" });
              }
              
      }
    }

//Route to get all user levels
module.exports.getLevels = async(req,res) =>{
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
  return res.status(400).send('error occured');
  }
    try {
      console.log(req.user._id);
    const myLevels = await Level.find({ createdBy: req.user._id });
    if (!myLevels) {
      return next(new ErrorResponse('No level detail exists', 400));
    }
      res.status(200).json({
        success: true,
        data: myLevels,
      });
    } catch (err) {
      console.log(err);
      return  res.status(500).send({ error: "server error" });
    }
}

//Route to update a Level
module.exports.updateLevel = async(req,res) =>{
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
  return res.status(400).send('error occured');
  }
    try {
      let update_Level = await Level.findById(req.params.id).lean();
    if (!update_Level) {
      return next(new ErrorResponse('This level entry does not exist', 400));
    }
    let level = await Level.findByIdAndUpdate(req.params.id, req.body, {
      new: true,
      runVaildators: true,
    });
      res.status(200).json({
        success: true,
        data: level,
      });
    } catch (err) {
      console.log(err);
      return  res.status(500).send({ error: "server error" });
    }
}