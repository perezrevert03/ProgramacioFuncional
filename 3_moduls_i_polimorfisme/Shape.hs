type Height = Float
type Width = Float
type Radius = Float

data Rectangle = Rectangle Height Width
data Circle = Circle Radius

class (Eq a, Show a) => Shape a where
area :: a -> Float
perimeter :: a -> Float
surfacePrism :: a -> Float

instance Shape Rectangle where
area (Rectangle w h) = w * h
perimeter (Rectangle w h) = 2 * (w + h) 
surfacePrism (Rectangle w h) = area (Rectangle w h) * 6

instance Shape Circle where
area (Circle r) = pi * r * r
perimeter (Circle r) =  2 * pi * r

type Volume = Float
volumePrism :: (Shape a) => a -> Height -> Volume
volumePrism base height = (area base) * height