curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "j@j",
      "password": "j",
      "password_confirmation": "j"
    }
  }'

  curl --include --request POST http://localhost:4741/sign-up \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "a@a",
        "password": "a",
        "password_confirmation": "a"
      }
    }'
