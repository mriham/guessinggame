
#!/bin/bash

# Function to count files in the current directory
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Function to check the user's guess
check_guess() {
    if [ "$guess" -lt "$number_of_files" ]; then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$number_of_files" ]; then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed the correct number!"
        return 0
    fi
    return 1
}

# Get the number of files
number_of_files=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Ask the user until the answer is correct
while true
do
    read -p "Enter your guess: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid positive number."
    elif check_guess; then
        break
    fi
done

echo "Game over. Thank you for playing!"
