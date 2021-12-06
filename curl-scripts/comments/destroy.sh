# sh curl-scripts/index.sh

curl "http://localhost:4741/comments/${COMMENT_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "postId": "'"${POST_ID}"'"
    }
  }'