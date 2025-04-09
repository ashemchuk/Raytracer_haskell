module Shapes where
import Renderable
import Vector

data Sphere = Sphere {center :: Vec3, radius :: Double, sphereColor :: Color, reflectivity :: Double}
    deriving Show

instance Renderable Sphere where
    norm :: Point -> Sphere -> Vec3
    norm p (Sphere c r _ _) = normalize (c - p)

    trace :: Ray -> Sphere -> Maybe Double -- пересечение прямой и шара
    -- links [5]
    trace (Ray o dir) (Sphere center r _ _) =
        let oc = (o - center)
            a = dot dir dir
            b = 2.0 * dot oc dir
            c = dot oc oc - r * r
            d = b * b - 4.0 * a * c in
                if d < 0
                    then Nothing
                else Just ((-b - sqrt d) / 2.0 * a )

    color :: Point -> Sphere -> Color
    color _ = sphereColor 

-- data Cube = {}
