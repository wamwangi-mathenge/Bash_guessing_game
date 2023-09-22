# Added exclamation mark to the shebang line

# Generate a random number between 1 and 100
secret_number=$(( (RANDOM % 100) + 1 ))

# Corrected the variable declared

# Initialize variables
guess=""
attempts=0
# Welcome message
echo "Welcome to the Number Guessing Game!"
echo "I'm thinking of a number between 1 and 100."
# Main game loop
while [[ "$guess" -ne "$secret_number" ]]; do
# added a second pair of square brackets

    # Prompt the user for a guess
    read -p "Enter your guess: " guess
    # Check if the input is a valid number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a number."
    continue
    fi
    # Increment the number of attempts
    ((attempts++))
    # Incorrect increment operator

    # Compare the guess with the secret number
    if [ "$guess" -lt "$secret_number" ]; then
    # Swapped the comparison operator
        echo "Too low! Try a higher number."
    elif [ "$guess" -gt "$secret_number" ]; then
    # Swapped the comparison operator
        echo "Too high! Try a lower number."
    else
    echo "Congratulations! You guessed the number correctly in $attempts attempts."
    break
fi
done
