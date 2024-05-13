#!/usr/bin/env wolframscript

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
password = RunProcess[{"bash", "-c", command}, "StandardOutput"];

(* Ensure the user is logged into Wolfram Cloud *)
If[Not[$CloudConnected],
CloudConnect["nick_skriloff@yahoo.com",password]
];

(* Verify if the connection was successful *)
If[Not[$CloudConnected],
  Print["Failed to connect to Wolfram Cloud. Please check your credentials."]
];

(* Define the URLs of the files to be downloaded *)
urls = {
  "https://www.wolframcloud.com/env/nickskriloff/WolframBasics.nb",
  "https://www.wolframcloud.com/env/nickskriloff/BrownianMotion.nb"
};


(* Download each file to the specified directory *)
downloadedFiles = Table[
  URLDownload[
    url,
    FileNameJoin[{ "./", FileNameTake[url]}]
  ],
  {url, urls}
];

(* Output the paths of downloaded files *)
downloadedFiles

