(*Metodo 1*)
let mux1 s0 a b = 
  (s0 && a) || (not s0 && b)

(*Metodo 2*)
let mux2 s0 a b = 
  if s0 then
    a 
  else b

(*Metodo 3*)
let mux3 s0 a b = match (s0) with
| (true) -> a
| (false) -> b

(*Metodo 4*)
let mux4 (s1 : bool) (s0 : bool) (a0 : bool) (a1 : bool) (a2 : bool) (a3 : bool) : bool =
  match(s1, s0) with
  | (false, false) -> a0
  | (false, true) -> a1
  | (true, false) -> a2
  | (true, true) -> a3