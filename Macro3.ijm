function action(input, output, filename) {
        open(input + filename);
        saveAs("Tiff", output + filename);
        close();
}
input = "D:/data/GGO_raw/GGO/val/1/";
output = "D:/data/GGO_raw/GGO/val/11/";
setBatchMode(true); 
list = getFileList(input);
for (i = 0; i < list.length; i++)
        action(input, output, list[i]);
setBatchMode(false);


