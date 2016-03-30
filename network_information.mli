type connection =
  | Unknown [@js "unknown"]
  | Ethernet [@js "ethernet"]
  | Wifi [@js "wifi"]
  | Cell_2G [@js "2g"]
  | Cell_3G [@js "3g"]
  | Cell_4G [@js "4g"]
  | Cell [@js "cellular"]
  | None [@js "none"]
  [@@js.enum]

class network_information : Ojs.t ->
  object
    inherit Ojs.obj

    method type_ : connection
    [@@js.get "type"]
  end

(* -------------------------------------------------------------------------- *)
val t : unit -> network_information
[@@js.get "navigator.connection"]
(* -------------------------------------------------------------------------- *)
