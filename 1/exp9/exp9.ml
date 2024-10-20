let square (a : int) : int =
  a * a

let exp9 (b : int) : int =
  square(square(square(b)))*b
