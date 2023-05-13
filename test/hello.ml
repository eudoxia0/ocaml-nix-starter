open Hello

let test_message _ =
  Alcotest.(check string) "same string" "Hello, world!" Message.message

let _ =
  let open Alcotest in
  run "Hello" [
      "message", [ test_case "message text" `Quick test_message ]
    ]
