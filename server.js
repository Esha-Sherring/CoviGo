// *NPM Packages
const express = require('express');
const passport = require('passport');
const bodyParser=require('body-parser')
const path = require('path')
const app = express();
// *Config
const connectdb = require('./config/db');
const passportSetup = require('./config/passport-setup');
require('dotenv').config({ path: __dirname + '/.env' });

//Keys for stripe payemnt
var Publishable_Key = process.env.PUBLISHABLE_KEY
var Secret_Key = process.env.SECRET_KEY
const stripe = require('stripe')(Secret_Key);




//initiaise passport
app.use(passport.initialize());
app.use(passport.session());


//STRIPE PAYMENT ROUTE
//-----------------PAYMENT ROUTE STARTS------------------
app.post('/payment', function(req, res){
  
    // Moreover you can take more details from user
    // like Address, Name, etc from form
    stripe.customers.create({
        email: req.body.stripeEmail,
        source: req.body.stripeToken,
        name: 'Gourav Hammad',
        address: {
            line1: 'TC 9/4 Old MES colony',
            postal_code: '452331',
            city: 'Indore',
            state: 'Madhya Pradesh',
            country: 'India',
        }
    })
    .then((customer) => {
  
        return stripe.charges.create({
            amount: 2500,     // Charing Rs 25
            description: 'Web Development Product',
            currency: 'INR',
            customer: customer.id
        });
    })
    .then((charge) => {
        res.send("Success")  // If no error occurs
    })
    .catch((err) => {
        res.send(err)       // If some error occurs
    });
})
//-----------------PAYMENT ROUTE ENDS------------------






 // *Routes
 const userroutes = require('./routes/userroutes.js');
 const orderroutes = require('./routes/order.js')
 const reminderroutes = require('./routes/reminders.js')
 const medicineroutes = require('./routes/medicineorder.js')
 const sanitationroutes = require('./routes/sanitation.js')
 //const activityroutes= require('./routes/activities.js')

// access config var
process.env.TOKEN_SECRET;

const PORT = process.env.PORT || 3000;

// *Connect to database
connectdb();


//add middlewares
const { protectUser } = require('./middleware/auth');
app.use(express.json({ extended: false }));

//initiaise passport
app.use(passport.initialize());
app.use(passport.session());


app.get('https://accounts.spotify.com/authorize')
// *Routes
 app.use('/api/user', userroutes);
 app.use('/api/order',orderroutes);
 app.use('/api/reminder',reminderroutes);
 app.use('/api/medicine',medicineroutes);
 app.use('/api/hygiene',sanitationroutes);
 //app.use('/api/activities',activityroutes);

const server = app.listen(PORT, console.log(`Server started on Port ${PORT}`));