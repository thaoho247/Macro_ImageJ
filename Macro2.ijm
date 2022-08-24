function action(input, output, filename) {
        open(input + filename);
        makeRectangle(38, 60, 450, 390);
        run("Duplicate...", "duplicate");
        run("Scale...", "x=- y=- z=- width=128 height=128 depth=64 interpolation=Bilinear average process create");
        run("16-bit");
        saveAs("Tiff", output + filename);
        close();
}
input = "D:/COVID_DATA/GGO_raw/Lung/YHU/";
output = "D:/COVID_DATA/GGO_raw/Lung/YHU1/";
setBatchMode(true); 
list = getFileList(input);
for (i = 0; i < list.length; i++)
        action(input, output, list[i]);
setBatchMode(false);


####run("NIfTI-1", "save=["+output + filename+"]");

