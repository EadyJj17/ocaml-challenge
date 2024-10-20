let in_range (x : 'a) (a : 'a) (b : 'b) : bool =
if (x >= a && x <= b) then
  true
else
  false