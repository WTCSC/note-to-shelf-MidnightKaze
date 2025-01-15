[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/x_3ULh4W)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=17697453)
# Note to Shelf

This is a simple note taking shell script. Because everyone needs a little bit of organization in the chaos of life as we know it. And why not use Shell instead of Python or Java... or literally anything else.

## How to Use

It's so easy to use this that my mom could probably use it. Just start by downloading the __note.sh__ file and importing it into a project if you want. But as long as you have the file readily available in your working directory it should work!

Ok, using this is as simple as knowing these three things:

- __./note.sh add [your note]__ - Which will do what it seems to do. It'll take your note and add it to the grand notes.txt file (which stores all of your notes). 
    ___! Just a note, if you want to add a double quote you'll have to do this: backslash double quote \ " (with no space) !___

- __./note.sh list__ - Which will list all of the notes you have ever made.

- __./note.sh search [search word]__ - Which will, well, it'll take the search word you put in and spit out all of the notes that contain it.

## Other Features

- Ever just accidentally delete the notes.txt file? Well no worries because the script will automatically make you a new one if it doesn't detect one. Isn't that just niffty.

- Error codes because we love being reminded that code doesn't work. If you happen to get anything other than a 0 then it will tell you what to do to get a 0 (like inputting a valid input).

- Special character support. Really use anything you want. The script won't judge if you use an @ instead of writing out at (realistically who doesn't do that in their notes).


<!--

Create a shell script that functions as a command-line note-taking tool. This tool should help you quickly capture and organize thoughts, reminders, and tasks directly from the terminal.

## Requirements

- The script must support the following commands:
    - Add a new note: `note add "Your note text here"`
    - List all notes: `note list`
    - Search notes: `note search "keyword"`
- Implementation requirements:
    - Store notes in a text file with proper date/time stamps
    - Include error handling for all commands
    - Implement input validation
    - Add proper logging for debugging

## Testing Criteria

Your script will be tested against the following scenarios:

- Adding notes with special characters
- Proper file operations (read/write)
- Correct date/time formatting
- Search functionality accuracy
- Proper exit codes for success/failure

## Example Usage

```bash
#!/bin/bash

# Add a note
$ ./note.sh add "Schedule dentist appointment"
Note added successfully

# List all notes
$ ./note.sh list
2025-01-06 12:04:06 - Schedule dentist appointment
2025-01-06 12:05:04 - Buy groceries

# Search notes
$ ./note.sh search "dentist"
2025-01-06 12:04:06 - Schedule dentist appointment
```

## Tips and Tricks

You might find the following resources helpful for completing this assignment:

- https://www.redhat.com/en/blog/arguments-options-bash-scripts
- https://linuxhint.com/bash_append_line_to_file/
- https://linuxconfig.org/how-to-find-a-string-or-text-in-a-file-on-linux
- https://www.geeksforgeeks.org/create-timestamp-variable-in-bash-script/

-->