#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
RANDOM_NUMBER=$((RANDOM % 1000 + 1))

echo "Enter your username:"
read USERNAME

EXISTING_USERNAME=$($PSQL "SELECT * FROM users WHERE username='$USERNAME';")
if [[ -z $EXISTING_USERNAME ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here." 
  INSERT_NAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
else
  echo $EXISTING_USERNAME | while IFS="|" read USER_ID USERNAME GUESSES
  do
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id=$USER_ID;")
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID;")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

GUESSES=0

GET_INPUT() {
  read NUMBER
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read NUMBER
  fi
  ((GUESSES++))
}

echo -e "\nGuess the secret number between 1 and 1000:"
GET_INPUT

while [[ $NUMBER != $RANDOM_NUMBER ]]
do
  if [[ $NUMBER > $RANDOM_NUMBER ]]
  then 
    echo "It's lower than that, guess again:"
    GET_INPUT
  else
    echo "It's higher than that, guess again:"
    GET_INPUT
  fi
done

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
INSERT_GUESSES_RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $GUESSES);")
echo "You guessed it in $GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"
