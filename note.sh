#!/bin/bash

# One piece at a time. $1 would be add, search or list while $2 would be the actual text :D (maybe I dunno will have to test later :/)
# Need to do:
# fix all the errors lmao
# add error catching w exit codes
# put all the parts together [done maybe probably who knows really]
# document it lol


# Makes a notes file if it doesn't already exist.
make_file() {
    if [[ ! -f "$notes_file" ]]; then
        touch "$notes_file"
    fi
}

# Adds the note to the note.
add_note() {
    local new_note="$1"

    local time=$('%Y-%m-%d %H:%M:%S')

    echo "[$time] $new_note" >> "$notes_file"
}

# List the notes list.
list_notes() {
    cat "$notes_file"
}

# Searches the notes list for a note.
search_notes() {
    search_word = "$1"
    
    grep -i -r "$search_word" "$notes_file"
}

# Putting all the pieces together :D
make_file

case "$1" in
    "add")
        add_note "$2"
        ;; # <== marks the end of a case argument btw
    
    "list")
        list_notes
        ;;
    
    "search_notes")
        search_notes "$2"

esac
exit 0
