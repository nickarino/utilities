#!/usr/bin/env wolframscript

(* The shebang line in a script specifies the interpreter for execution, such as `wolframscript`, enabling the system to run the script directly from the command line. It incorporates `/usr/bin/env` for enhanced portability across Unix-like systems, allowing the script to execute correctly regardless of the `wolframscript` installation path, and permits the script to be run directly with a simple command like `./example.wls`. *)

(* Set the script to be executable and output directly to the terminal *)
SetOptions[$Output, FormatType -> OutputForm];

CloudDisconnect[];
Print [$CloudConnected]
(* handwrite the password. *)
CloudConnect["nick_skriloff@yahoo.com","password"];
Print [$CloudConnected]


If[Not[$CloudConnected],
  Print["Connect to the Wolfram Cloud"],
  Print["Already connected to the Wolfram Cloud"]
]
