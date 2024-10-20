let is_even (a : int) : bool =
let modulo = a mod 2 in
match modulo with
| 0 -> true
| _ -> false

let win (g1 : int) (g2 : int) : string =
 
  if (g1 >= 1 && g1 <= 5) then
    if(g2 >= 2 && g2 <= 5) then
      if(is_even(g1+g2) == true) then
        "Ha vinto G1!"
      else
        "Ha vinto G2!"
    else
      "Ha vinto G1!"
  else if (g2 >= 1 && g2 <= 5) then
    "Ha vinto G2!"
  else
    "Non ha vinto nessuno!"

  

