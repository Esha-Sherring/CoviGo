    // * Utils
    const { check, validationResult } = require('express-validator');

    // * Models
    const Reminder = require('../models/reminders');



    //Route to add reminder details
    module.exports.placeorder = async (req, res) => {
        console.log('place order route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else
        {
                try{
                 
                  const {meals,address,phone} = req.body;
                  const newOrder = new Order({
                   
                    meals,
                    address,
                    phone,
                    createdBy:req.user.id
                   
                  }) ;
                  console.log(newOrder)
                  newOrder.save();
                  
                
                
                  return res.json(newOrder).status(200);
                }catch(err){
                  console.log(err)
                  return res.status(404).send({ error: "server error" });
                }
                
        }
      }

    //Route to get reminders
    module.exports.getreminders = async (req, res) => {
        console.log('get reminders route');
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
        return res.status(400).send('error occured');
        }
        else
        {
                try{
                 
                  
                  const reminders= await Reminder.find({})
                  console.log(reminders)
                  return res.json(reminders).status(200);
                }catch(err){
                  console.log(err)
                  return res.status(404).send({ error: "server error" });
                }
                
        }
      }
    

        
  
