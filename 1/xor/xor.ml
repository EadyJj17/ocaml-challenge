(*Metodo 1*)
let xor1 a b = (a || b) && not(a && b)

(*Metodo 2*)
let xor2 (a : bool) (b : bool) : bool =
    if a then
        (if b then false
        else
            true)
        else if b then
            true
        else
            false

(*Metodo 3*)
let xor3 a b = 
    match (a, b) with
    |    (false, false) -> false
    |    (true, true) -> false
    |    _ -> true

