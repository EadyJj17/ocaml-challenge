let movie_rating (r1 : int) (r2 : int) (r3 : int) : string =
  if (r1 > 5 || r1 < 1 || r2 > 5 || r2 < 1 || r3 > 5 || r3 < 1) then
    "Errore"
  else if (r1 == 5 && r2 == 5 && r3 == 5) then
    "Masterpiece"
  else if (r1 == 5 && r2 == 5 && r3 == 4
        || r1 == 5 && r2 == 4 && r3 == 5
        || r1 == 4 && r2 == 5 && r3 == 5) then
    "Highly Recommended"
  else if (r1 >= 4 && r2 >= 4 && r3 >= 3 && r3 < 5
        || r1 >= 4 && r2 >= 3 && r2 < 5 && r3 >= 4
        || r1 >= 3 && r1 < 5 && r2 >= 4 && r3 >= 4) then
    "Recommended"
  else
    "Mixed Reviews";;

    let movie_rating2 (a : int) (b : int) (c : int) : string =
      if ((a+b+c) == 15) then
        "Masterpiece"
      else if ((a+b+c) == 14) then
        "Highly Recommended"
      else if ((a+b+c) >= 11 && ((a >= 4) && (b >= 4) && (c >= 3))  || ((a >= 4) && (c >= 4) && (b >= 3) || ((b >= 4) && (c >= 4) && (a >= 3)))) then
        "Recommended"
      else
        "Mixed Reviews";;

    assert(movie_rating 5 5 5 = "Masterpiece");;
    assert(movie_rating 5 5 4 = "Highly Recommended");;
    assert(movie_rating 5 4 5 = "Highly Recommended");;
    assert(movie_rating 4 5 5 = "Highly Recommended");;
    assert(movie_rating 5 4 4 = "Recommended");;
    assert(movie_rating 4 4 4 = "Recommended");;
    assert(movie_rating 4 4 3 = "Recommended");;
    assert(movie_rating 3 4 4 = "Recommended");;