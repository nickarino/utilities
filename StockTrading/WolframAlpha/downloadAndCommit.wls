(* Ensure the user is logged into Wolfram Cloud *)
If[Not[CloudConnected[]],
  CloudConnect[]
];

(* Verify if the connection was successful *)
If[Not[CloudConnected[]],
  Print["Failed to connect to Wolfram Cloud. Please check your credentials."],
  (* Continue with the rest of the script if the login is successful *)

  (* Define the URLs of the files to be downloaded *)
  urls = {
    "https://www.wolframcloud.com/env/nickskriloff/WolframBasics.nb",
    "https://www.wolframcloud.com/env/nickskriloff/BrownianMotion.nb"
  };

  (* Define the destination directory *)
  destinationDirectory = "/Users/skriloffn/devhelp/utilities/StockTrading/WolframAlpha/";

  (* Ensure the destination directory exists *)
  If[Not[DirectoryQ[destinationDirectory]],
    CreateDirectory[destinationDirectory, CreateIntermediateDirectories -> True]
  ];

  (* Download each file to the specified directory *)
  downloadedFiles = Table[
    URLDownload[
      url,
      FileNameJoin[{destinationDirectory, FileNameTake[url]}]
    ],
    {url, urls}
  ];

  (* Output the paths of downloaded files *)
  downloadedFiles;

  (* Path to the commit.sh script *)
  bashScriptPath = FileNameJoin[{destinationDirectory, "commit.sh"}];

  (* Execute the commit.sh script using RunProcess *)
  RunProcess[{"sh", bashScriptPath}]
]
