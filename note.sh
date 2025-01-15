#!/bin/bash

#Implement something to handle the special characters (printf)

# Defines a universal notes file.
notes_file="notes.txt"

# Makes a notes file if it doesn't already exist.
make_file() {
    # Basically if the notes file defined about DOES NOT exist, then it will touch the file.
    if [[ ! -f "$notes_file" ]]; then
        touch "$notes_file"
    fi
}

# Adds the note to the note.
add_note() {
    # Defines that the local note text is equal to the inputed message.
    local new_note="$1"

    # Added an exit code for some error detection.
    if [[ -z "$new_note" ]]; then
        echo "Please input a note"
        exit 1
    fi

    # Defines that the local time is equal to well, the date and time.
    local time=$(date '+%Y-%m-%d %H:%M:%S')

    # Appends that back to the notes file (notes.txt).
    echo "$time - $1" >> "$notes_file"
    echo "Note added succesfully"
}

# List the notes list.
list_notes() {
    # Basically just prints out the file, which is the list of notes.
    cat "$notes_file"
}

# Searches the notes list for a note.
search_notes() {
    # Defines that the local search term is equal to the inputed word.
    local search_word="$1"

    # Added an exit code for some error detection.
    if [[ -z "$search_word" ]]; then
        echo "Please input a search word"
        exit 1
    fi
    
    # Will search the notes file (notes.txt) for the word regardless of case sensitivities (-i).
    grep -i "$search_word" "$notes_file"
}

# Putting all the pieces together :D
# Will make the text file if needed.
make_file

# Case will check if the first input is one of the three accepted operations.
case "$1" in
    "add")
    # Runs the add_note function with the second argument as the input for the function.
        add_note "$2"
        ;;
    # Runs the list_notes function.
    "list")
        list_notes
        ;;
    # Runs the search_notes function with the second argument as the input for the function.
    "search")
        search_notes "$2"
        ;;
    # Added an exit code for if none of the operations above are used.
    *)
        echo "Please use one of the following operations: add, list, or search"
        exit 1

esac
exit 0
