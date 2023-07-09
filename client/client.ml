let make_btn on_click content =
  (button ~onClick:on_click ~children:[ React.string content ] ())[@JSX]

module App = struct
  let make () =
    let count, setCount = React.useState (fun _ -> 0) in
    let incr = (fun _ -> setCount (fun _ -> count + 1)) in
    let decr = (fun _ -> setCount (fun _ -> count - 1)) in
    (div 
      ~children:[
        make_btn incr "+1";
        (p ~children:[ count |> string_of_int |> React.string ] ())[@JSX];
        make_btn decr "-1";
      ]
      ())[@JSX]
    [@@react.component]
end;;

type rootObject;;
external createRoot : Dom.element -> rootObject = "createRoot" [@@bs.module "react-dom/client"] ;;
external rootRender: rootObject -> React.element -> unit = "render" [@@bs.send];;

let () =
  let e = (App.createElement ())[@JSX] in
  match ReactDOM.querySelector "#root" with
  | Some entry -> 
      let root = createRoot entry in
      let _ = Js.log root in
      rootRender root e
  | None -> ()
;;
