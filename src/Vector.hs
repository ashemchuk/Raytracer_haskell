module Vector where

data Vec3 =  Vec3 {x :: Double, y :: Double, z :: Double}
    deriving (Show, Eq)

instance Num Vec3 where
    (+) :: Vec3 -> Vec3 -> Vec3
    (+) (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = Vec3 (x1+x2) (y1+y2) (z1+z2)

    (*) :: Vec3 -> Vec3 -> Vec3
    (*) (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = Vec3 (x1*x2) (y1*y2) (z1*z2)

    abs :: Vec3 -> Vec3 
    abs (Vec3 x y z) = Vec3 (abs x) (abs y) (abs z)

    negate :: Vec3 -> Vec3 
    negate (Vec3 x y z) = Vec3 (-x) (-y) (-z)

    -- fromInteger :: Integer -> Vec3
    -- fromInteger x = Vec3 x x x



len :: Vec3 -> Double
len (Vec3 x y z) = sqrt $ x * x + y * y + z * z

normalize :: Vec3 -> Vec3
normalize v = scal (1 / len v) v

dot :: Vec3 -> Vec3 -> Double
dot (Vec3 x1 y1 z1) (Vec3 x2 y2 z2) = x1 * x2 + y1 * y2 + z1 * z2

scal :: Double -> Vec3 -> Vec3
scal alpha (Vec3 x y z) = Vec3 (alpha * x) (alpha * y) (alpha * z)

distance :: Vec3 -> Vec3 -> Double
distance u v = len (v - u)