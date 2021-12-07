const mongoose = require('mongoose')
const commentSchema = require('./comment')

const postSchema = new mongoose.Schema(
	{
		title: {
			type: String,
			required: true,
		},
		Owner: {
			type: mongoose.Schema.Types.ObjectId,
			ref: 'User',
			required: true,
		},
		category: {
			type: String,
			required: true,
		},
		message: {
			type: String,
			required: true,
		},
		// created a one to many relationship where one post can have many reviews, we use subdocument array
		comments :[commentSchema]
	
	},
	{
		timestamps: true,
	}
)

module.exports = mongoose.model('Post', postSchema)
