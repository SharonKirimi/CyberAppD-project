# sh curl-scripts/index.sh

curl "http://localhost:4741/comments/${COMMENT_ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "title": "'"${TITLE}"'",
      "content": "'"${CONTENT}"'",
      "postID": "'"${POST_ID}"'"
    }
  }'