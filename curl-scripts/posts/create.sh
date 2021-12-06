#!/bin/bash


# TITLE="Authentication" OWNER=" Sharon K" CATEGORY="Application Security" MESSAGE="Using two-factor Authentications" sh curl-scripts/posts/create.sh

API="http://localhost:4741"
URL_PATH="/posts"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "post": {
      "title": "'"${TITLE}"'",
      "owner": "'"${OWNER}"'"
      "category": "'"${CATEGORY}"'",
      "message": "'"${MESSAGE}"'"
    }
  }'

echo
