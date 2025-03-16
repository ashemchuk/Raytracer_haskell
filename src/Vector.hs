module Vector where

data Vec3 =  Vec3 {x :: Double, y :: Double, z :: Double}
    deriving (Show, Eq)

-- instance Num Vec3 where
--     (+) :: Vec3 -> Vec3 -> Vec3
--     (+) (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = Vec3 (x1+x2) (y1+y2) (z1+z2)

--     (*) :: Vec3 -> Vec3 -> Vec3
--     (*) (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = Vec3 (x1*x2) (y1*y2) (z1*z2)

--     abs :: Vec3 -> Double ?? 
--     abs (Vec3 x y z) = sqrt $ x * x + y * y + z * z


add :: Vec3 -> Vec3 -> Vec3
add (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = Vec3 (x1+x2) (y1+y2) (z1+z2)

neg :: Vec3 -> Vec3
neg (Vec3 x y z) = Vec3 (-x) (-y) (-z)

sub :: Vec3 -> Vec3 -> Vec3
sub u v = add u $ neg v

len :: Vec3 -> Double
len (Vec3 x y z) = sqrt $ x * x + y * y + z * z

normalize :: Vec3 -> Vec3
normalize v = scal (1 / len v) v

dot :: Vec3 -> Vec3 -> Double
dot (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = x1 * x2 + y1 * y2 + z1 * z2

scal :: Double -> Vec3 -> Vec3
scal alpha (Vec3 x y z) = Vec3 (alpha * x) (alpha * y) (alpha * z)

-- покоординатное умножение
mul :: Vec3 -> Vec3 -> Vec3 
mul (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = Vec3 (x1*x2) (y1*y2) (z1*z2)

distance :: Vec3 -> Vec3 -> Double
distance u v = len $ sub v u