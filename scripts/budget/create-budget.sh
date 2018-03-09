#!/bin/bash

# TOKEN="" DATE="" STORE="" AMOUNT= sh scripts/receipts/create-receipt.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/budgets"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "budget": {
      "date": "'"${DATE}"'",
      "store": "'"${STORE}"'",
      "amount": "'"${AMOUNT}"'"
    }
  }'

echo
