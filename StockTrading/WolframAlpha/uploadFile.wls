(* wolframscript -file uploadFile.wls *)

(* Specify the local file path *)
localFilePath = "./file.txt";

(* Read the file content *)
fileContent = Import[localFilePath, "Text"];

(* Upload the file content to Wolfram Cloud *)
cloudObject = CloudPut[fileContent, "uploadedFile.txt"];

(* Print the CloudObject URL to verify the upload *)
Print[cloudObject];
