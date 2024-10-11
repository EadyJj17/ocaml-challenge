(*Metodo 1*)
let nand b1 b2 = not(b1 && b2)

(*Metodo 2*)
let nandIf b1 b2 = if b1 && b2 then
  false
else
  true

(*Metodo 3*)
let patternM b1 b2 = 
match(b1,b2) with
| (true, true) -> false
| _ -> true = true