const mongoose = require('mongoose')
const Schema = mongoose.Schema

const commentSchema = new Schema({
	title: {
		type: String,
		required: true,
	},
	content: {
		type: mongoose.Schema.Types.ObjectId,
		ref: 'User',
		required: true,
	},
},
{
		timestamps: true,
})

// because this is a childSchema, i don't need to create a model, like I did in the post.js model
module.exports = commentSchema