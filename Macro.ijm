function action(input, output, filename) {
        open(input + filename);
        makePolygon(125,41,36,182,100,219,220,219,291,181,201,41,161,50);
        setBackgroundColor(0, 0, 0);
        run("Clear Outside");
        saveAs("Tiff", output + filename);
        close();
}
input = "D:/data/RAW/";
output = "D:/data/1/";
setBatchMode(true); 
list = getFileList(input);
for (i = 0; i < list.length; i++)
        action(input, output, list[i]);
setBatchMode(false);


