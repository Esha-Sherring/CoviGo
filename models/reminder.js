const mongoose = require('mongoose');
const reminderSchema = new mongoose.Schema({
  medicines: {  

    type: String,
    required: true,

  },stream: {
    type: String,
    required: true,
  },
  water: {
    type: String,
    required: true,
  },
  rest:{
    type: String,
    required: true,
  },
  createdAt:{
    type: Number,
    default: Date.now,
    required:true,
},
 createdBy:{
    type: mongoose.Schema.ObjectId,
    ref: 'users',
    required: true,
},

})

const Medicine = mongoose.model('medicines', medicineSchema);
module.exports = Medicine;
