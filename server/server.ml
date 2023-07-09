open Tyxml.Html;;


let hello () =
    h1 ~a:[] [ txt "hi" ]
;;

let html_to_string html =
    Format.asprintf "%a" (pp_elt ()) html

let () =
    let txt = hello () |> html_to_string in
    Dream.router [
        Dream.get "/" (fun _ -> Dream.html txt);
    ]
    |> Dream.logger
    |> Dream.run
;;
