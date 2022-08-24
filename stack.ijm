// get a test image stack
newImage("Untitled", "8-bit ramp", 100, 100, 100);

// select output folder
folder = "D:/data/RAW/test2"

// read size of image stack
getDimensions(width, height, channels, slices, frames);

// split it into sub-stacks
for (z = 1; z <= slices; z+= 5) {
	
	// define range
	range = "" + z + "-" + (z + 4);

	// crop out sub stack
	run("Duplicate...", "duplicate range=" + range);

	// save it
	saveAs("Tiff", folder + "output_" + range + ".tif");

	// close the sub stack
	close();
} 


