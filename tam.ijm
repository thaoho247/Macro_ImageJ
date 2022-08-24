function action(input, output, filename) {
        open(input + filename);
        run("Flip Vertically", "stack");
        saveAs("Zip", output + filename);
        
        close();
}
input = "Z:/HDD2/common/BUSAN/AVIEW_Dicom_1/SE_00004_00000015/stor/NEW/objects/";
output = "Z:/HDD2/common/BUSAN/AVIEW_Dicom_1/SE_00004_00000015/stor/NEW/OK1/";
setBatchMode(true); 
list = getFileList(input);
for (i = 0; i < list.length; i++)
        action(input, output, list[i]);
setBatchMode(false);


