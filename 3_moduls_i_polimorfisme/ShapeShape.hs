type Height = Float
type Width = Float
type Radius = Float

data Shape = Rectangle Height Width | Circle Radius deriving (Eq, Show)

area :: Shape -> Float
area (Rectangle h w) = h * w
area (Circle r) = pi * r**2

perimeter :: Shape -> Float
perimeter (Rectangle w h) = 2 * (w + h)
perimeter (Circle r) =  2 * pi * r

surfacePrism :: Shape -> Float
surfacePrism (Rectangle h w) = area (Rectangle h w) * 6