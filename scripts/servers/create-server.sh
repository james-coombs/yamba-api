curl --include --request POST http://localhost:4741/servers \
  --header "Authorization: Token token=BAhJIiUxZmMwY2U3MDBkNWIyMWM2YzhiODhlZjIzM2Q5MDJmYgY6BkVG--61cde3c254ce3ad5fc12b73e793ee1e381dfe4a8" \
  --header "Content-Type: application/json" \
  --data '{
    "server": {
      "name": "example",
      "user_id": 1
    }
  }'
