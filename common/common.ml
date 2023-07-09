type environment =
    | Client
    | Server

let to_string = function
    | Client -> "Client"
    | Server -> "Server"
