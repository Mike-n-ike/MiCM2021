# MiCM2021

This repo serves a way to track the progress I've made through the MiCM Summer Scholars Program.

# Objective
The code displayFrame.m accepts a user-inputed .tif file and displays the data (a select frame entered by user-input) in the matrix using the full range of colors in the colormap.

# Installation Instructions
1. Download MATLAB for Desktop at the link: https://www.mathworks.com/downloads
2. Clone this repository using: git clone https://github.com/Mike-n-ike/MiCM2021.git
3. Select the correct path in MATLAB to see the files (e.x /Users/michael/Documents/GitHub/MiCM2021)

# Command to Run Code
1. Type into terminal: displayFrame()
2. Select the .tif file provided (or one of your own if you have it)
3. Select the frame you wish to see
4. Look for a pop-up window with your colormap image of the frame

# Expected Output
The expected output depends on the input file and frame # you select. A sample output is below:

![Screen Shot 2021-06-26 at 1 19 47 AM](https://user-images.githubusercontent.com/39393046/123502773-db345380-d61c-11eb-9da8-883530ed1cad.png)

# Current Papers Read
- ICS chapter from the Comprehensive Biophysics book
- Live-Cell Super-resolution Reveals F-Actin and Plasma Membrane Dynamics at the T Cell Synapse (Ashdown et al.)
- Advances in Image Correlation Spectroscopy: Measuring Number Densities, Aggregation States, and Dynamics of Fluorescently labeled Macromolecules in Cells (Kolin and Wiseman)
- Spatiotemporal Image Correlation Spectroscopy (STICS) Theory, Verification, and Application to Protein Velocity Mapping in Living CHO Cells (Herbert et al.)
- STICS Manual (Pandzic)

# Current Work Done (code hidden in private repo)
- Created main app that houses & runs the STICS algorithm
  - Created adjustable tabs & sliders to adjust input parameters
- Created Stack Viewer
  - Added 2 Channel + FOV viewers
  - Added adjustable scaling on the colormap
  - Added various colormap options (e.x parula, jet, cool, etc...)
  - Added automatic adjustment of FOV region as it moves across image
  - Added sliders to control size and x,y position of FOV
  - Added drop-down menu to change FOV color
  - Added speed slider & input box to play through frames
