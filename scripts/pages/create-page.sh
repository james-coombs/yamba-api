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


  t.string   "title"
  t.string   "body"
  t.string   "code"
  t.string   "image"
  t.integer  "user_id"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
