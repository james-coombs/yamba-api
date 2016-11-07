curl --include --request POST http://localhost:4741/pages \
  --header "Content-Type: application/json" \
  --data '{
    "page": {
      "title": "an example title",
      "body": "an example body",
      "code": "f = () => {};",
      "image": "N/A",
      "user_id": 1
    }
  }'


  curl --include --request POST http://localhost:4741/pages \
  --header "Authorization: Token token=BAhJIiUxZmMwY2U3MDBkNWIyMWM2YzhiODhlZjIzM2Q5MDJmYgY6BkVG--61cde3c254ce3ad5fc12b73e793ee1e381dfe4a8" \
    --header "Content-Type: application/json" \
    --data '{
      "page": {
        "title": "an title",
        "body": "an body",
        "code": "f = () => {};",
        "image": "N/A",
        "user_id": 1,
        "server_id": 1
      }
    }'

  t.string   "title"
  t.string   "body"
  t.string   "code"
  t.string   "image"
  t.integer  "user_id"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
