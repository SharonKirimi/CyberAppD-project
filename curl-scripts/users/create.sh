# sh curl-scripts/index.sh

#EMAIL='A@A' PASSWORD="A" sh curl-scripts/create.sh

curl "http://localhost:4741/users" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "email": "'"${EMAIL}"'",
      "hashedpassword": "'"${PASSWORD}"'"
    }
  }'

echo