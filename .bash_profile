# Load files
for file in ~/.{bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file


# RVM, NVM and other stuff goes here...