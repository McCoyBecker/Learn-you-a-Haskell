-- Generate Pythagorean triples up to a certain limit --

pythagTrips :: Int -> [(Int,Int,Int)]
pythagTrips limit = [(x,y,z) | x <- [1..limit], y <- [1..limit], z <- [1..limit], (x*x) + (y*y) - (z*z) == 0]

-- Project Euler #09 --

pythagTrips_Euler :: Int -> Int -> [(Int,Int,Int)]
pythagTrips_Euler limit sum = [(x,y,z) | x <- [1..limit], y <- [1..limit], z <- [1..limit], (x*x) + (y*y) - (z*z) == 0, x + y + z == sum]
