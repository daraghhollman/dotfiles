# Specify the path to the file containing lines
file_path="/home/daraghhollman/Main/scripts/fetchPrompts.txt"

# Count the number of lines in the file
num_lines=$(wc -l < "$file_path")

# Generate a random line number
random_line_number=$(( (RANDOM % num_lines) + 1 ))

# Get the random line from the file
random_line=$(sed -n "${random_line_number}p" "$file_path")

line_format='    prin "'"$random_line"'"'

# Update neofetch config
sed -i "9s/.*/$line_format/" /home/daraghhollman/.config/neofetch/bashrc_conf.conf

