(* Set your username and password *)
username = "nick_skriloff@yahoo.com"; (* Replace with your actual username *)
password = "Iy0LO&0bXE3uTavB"; (* Replace with your actual password *)
service = "WolframCloud"; (* Service name for identification in Keychain *)

(* Command to add credentials to Keychain *)
command = StringJoin[{
  "security find-generic-password -a \"", username, 
  "\" -s \"", service, 
  "\" -w 
}];

(* Execute the command using RunProcess *)
RunProcess[{"bash", "-c", command}, "StandardOutput"]