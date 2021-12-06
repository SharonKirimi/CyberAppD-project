# sh curl-scripts/index.sh

# POST_ID="an id number got after creating a post" TITLE="Biometrics" CONTENT="My fingerprint biomentrics can be scanned with security devices like the YubiKey"

curl "http://localhost:4741/comments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "title": "'"${TITLE}"'",
      "content": "'"${CONTENT}"'",
      "postID": "'"${POST_ID}"'"
    }
  }'

echo