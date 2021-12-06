const express = require('express')

const router = express.Router()


const Post = require('../models/post')
const handle404 = require('../../lib/custom_errors')

router.get('/comments', (req, res, next) => {
    // accept and ID of the post to add a review to
    // accept the comment data as an object
    // extract our comment data form the request's body
	const commentData = req.body.comment
    // extract out postID for the post we want to comment on
    const postId = commentData.postId

// the next three lines are the same as showing the posts
    Post.findById(postId)
        .then(handle404)
        .then(post => {
            post.comment.push(commentData)

            return post.save()

        })
        .then(post => res.status(201).json({ post }))
        .catch(next)
    
})


module.exports = router
