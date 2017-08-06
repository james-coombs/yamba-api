curl --include --request POST http://localhost:4741/boards \
  --header "Authorization: Token token=BAhJIiVmNjBmMmIwOTc2MDE4MWE2ODc1NzY3ZWM2MTVlM2VlYgY6BkVG--089680f84d91f521659a1e52e91c693a4117edd0" \
  --header "Content-Type: application/json" \
  --data '{
    "board": {
      "name": "example 3"
    }
  }'
