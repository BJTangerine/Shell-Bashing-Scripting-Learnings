# script that loops through each file in the robs_files/ directory to see if it is a Python file (ends in .py) AND contains RandomForestClassifier. 
# If it meets criteria, move it to the to_keep/ directory

for file in robs_files/*.py
do  
    # grep IF statement
    if grep -q 'RandomForestClassifier' $file ; then
        # Move wanted files to to_keep/ folder
        mv $file to_keep/
    fi
done
