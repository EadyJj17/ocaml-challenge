(*Metodo 1*)
let mux1 s0 a b = 
  (s0 && a) || (not s0 && b)

(*Metodo 2*)
let mux2 s0 a b = 
  if s0 then
    a 
  else b

(*Metodo 3*)
let mux3 s0 a b = match (s0,a,b) with
| (true, _, _) -> a
| (false, _, _) -> b