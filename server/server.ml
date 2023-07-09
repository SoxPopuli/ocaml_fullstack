open Tyxml;;
open Tyxml.Html;;


let hello () =
    h1 ~a:[] [ txt "hi" ]
;;

let hello2 () =
    [%html
        {|<h1>bye</h1>|}
    ]

let html_to_string html =
    Format.asprintf "%a" (pp_elt ()) html

let () =
    let txt = hello () |> html_to_string in
    let txt2 = hello2 () |> html_to_string in
    Dream.router [
        Dream.get "/" (fun _ -> Dream.html txt);
        Dream.get "/2" (fun _ -> Dream.html txt2);
    ]
    |> Dream.logger
    |> Dream.run
;;
