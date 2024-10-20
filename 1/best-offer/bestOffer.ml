let best_offer (a : int option) (b : int option) (c : int option) : int option =
  if (a == None && b == None && c == None) then
    None
  else if (a > b && a > c) then
    a
  else if (b > a && b > c) then
    b
  else
    c
  ;;

  assert(best_offer (Some 100) (Some 150) (Some 200) = (Some 200));;
  assert(best_offer (Some 250) (Some 150) (Some 400) = (Some 400));;
  assert(best_offer (Some 150) (Some 150) (Some 300) = (Some 300));;