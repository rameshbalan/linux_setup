#!/bin/bash

echo "Hi there! Nice of you to think about organizing your project!"
echo "============================================================="
echo "Please enter the name of your project below."
echo "Be sure to avoid spaces between the words. You could use _ instead!"
echo "==============================================================="
read project_name

mkdir "$project_name"

mkdir "$project_name/data" "$project_name/doc" "$project_name/results" "$project_name/scripts" "$project_name/tmp"

# Readme file for the project
echo "### Few pointers for Project Organization" > "$project_name/readme.md"
echo "- Use GitHub for collborating,sharing and version control of your scripts!" >> "$project_name/readme.md"
echo "- Add your raw data, backup data and any large files >50 Mb to .gitignore file." >> "$project_name/readme.md"
echo "- Use a pipeline management tool such as snakemake or nextflow" >> "$project_name/readme.md"
echo "- Process and analyze results in a jupyter notebook or a Rmarkdown document" >> "$project_name/readme.md"

# Readme file for data
echo "This directory is for raw data, backup raw data and processed data" > "$project_name/data/readme.md"
echo "_Please make sure that every step from the raw data to the data in the final step is completed reproducible._" >> "$project_name/data/readme.md"
echo "If you have collaborators, create subdirectories to account for their contribution and reproducibility!" >> "$project_name/data/readme.md"

# Readme file for doc
echo "This directory is for your manuscript, notes, presentations, pdfs and so on!" > "$project_name/doc/readme.md"

# Readme file for results
echo "This directory is of anything that is considered results!" > "$project_name/results/readme.md"

# Readme file for scripts
echo "This directory is for all the scripts, notebooks, snakemake/nextflow pipelines and others." > "$project_name/scripts/readme.md"

# Readme file for tmp
echo "This direcotry is for all the trial runs, checks and things you can delete without thinking about it." > "$project_name/tmp/readme.md"


echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!!!!!!!!Project Initialization completed SUCCESSFULLY!!!!!!!!!!!!!!"
echo "!!!!readme files are available under each sub directory!!!!!!!!!!!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

tree "$project_name"