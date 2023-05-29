#!/bin/bash

# Path to the Visual Studio solution file (.sln)
solution_file="path/to/your/solution.sln"

# Path to the Mono compiler (mcs)
mcs_path="/usr/bin/mcs"

# Path to the output directory
output_directory="path/to/output/directory"

# Clean previous build
echo "Cleaning previous build..."
rm -rf "$output_directory"

# Create output directory
echo "Creating output directory..."
mkdir -p "$output_directory"

# Build the solution
echo "Building the solution..."
"$mcs_path" /nologo /verbosity:quiet /target:exe /out:"$output_directory/app.exe" "$solution_file"

# Check the build status
if [ $? -eq 0 ]; then
  echo "Build successful!"
else
  echo "Build failed!"
fi
