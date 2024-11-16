#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n\nWelcome to My Salon, how can I help you?\n"

PRINT_SERVICES() {
  SERVICES_LIST=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id;")
  echo "$SERVICES_LIST" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done
}

PRINT_SERVICES

read SERVICE_ID_SELECTED
GET_SERVICE_RESULT=$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED;")
if [[ -z $GET_SERVICE_RESULT  ]]
then
  echo -e "\nI could not find that service. What would you like today?"
  PRINT_SERVICES
else
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  CHECK_PHONE_RESULT=$($PSQL "SELECT phone FROM customers WHERE phone='$CUSTOMER_PHONE';")
  if [[ -z $CHECK_PHONE_RESULT ]]
  then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    echo -e "\nWhat time would you like your cut, $CUSTOMER_NAME?"
    read SERVICE_TIME
    echo -e "\nI have put you down for a cut at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
fi
