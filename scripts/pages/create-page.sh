curl --include --request POST http://localhost:4741/pages \
--header "Authorization: Token token=BAhJIiVjNjlkY2NiZmM0MGNkOTk5ZDBiZTliOTE3MTc3MjU2YwY6BkVG--d2909c1fe0dc8266349e072f3fea7e9ae20f3199" \
  --header "Content-Type: application/json" \
  --data '{
    "page": {
      "title": "an title",
      "body": "an body",
      "user_id": 1,
      "server_id": 1
    }
  }'

curl --include --request POST http://localhost:4741/pages \
  --header "Content-Type: application/json" \
  --data '{
    "page": {
      "title": "an example title",
      "body": "an example body",
      "user_id": 1,
      "server_id": 1
    }
  }'
