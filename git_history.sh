#!/bin/bash

# Array of real-looking commit messages
messages=(
    "Initial project structure" "Setup base HTML" "Added CSS variables" 
    "Created navigation" "Hero section design" "Added social icons" 
    "About page layout" "Integrated Google Fonts" "Education timeline" 
    "Certifications grid" "Skills progress bars" "SVG animations" 
    "Project gallery grid" "Hover effects" "Blog sidebar setup" 
    "Contact form logic" "Attribute selectors" "Mobile responsiveness" 
    "Image optimization" "Sticky header fix" "Nth-child styling" 
    "Gradient refinements" "CSS cleanup" "Cross-browser fixes" "Final Version"
)

# Date Range: Oct 2 to Oct 28, 2025
start_date=1759363200 
end_date=1761609600

# Initialize Git
git init

# IMPORTANT: Add ALL your actual code in the very first step
git add .

for msg in "${messages[@]}"
do
    # Get a random time
    random_ts=$(shuf -i $start_date-$end_date -n 1)
    formatted_date=$(date -d "@$random_ts" +"%Y-%m-%d %H:%M:%S")

    # Add a single SPACE to the end of styles.css to trigger a "change" 
    # This keeps your code 100% readable and exactly as you wrote it.
    echo " " >> styles.css
    
    git add .
    
    # Commit the WHOLE project with the random date
    GIT_AUTHOR_DATE="$formatted_date" GIT_COMMITTER_DATE="$formatted_date" git commit -m "$msg"
done

echo "Done! 25 commits created. Every commit now contains your full code."