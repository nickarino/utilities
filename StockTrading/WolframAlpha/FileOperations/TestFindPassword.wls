#!/usr/bin/env wolframscript

(* security add-generic-password -a "nick_skriloff@yahoo.com" -s "WolframCloud" -w "password" *)
(* Set your username and password *)
username = "nick_skriloff@yahoo.com"; (* Replace with your actual username *)
service = "WolframCloud"; (* Service name for identification in Keychain *)

(* Command to add credentials to Keychain *)
command = StringJoin[{
  "security find-generic-password -a \"", username, 
  "\" -s \"", service, 
  "\" -w" 
}];

Print[command]

(* Execute the command using RunProcess *)
Print[RunProcess[{"bash", "-c", command}, "StandardOutput"]]