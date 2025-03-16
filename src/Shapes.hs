module Shapes where
import Rendered
import Vector

data Sphere = Sphere {center :: Vec3, radius :: Double, sphereColor :: Color, reflectivity :: Double}
    deriving Show

instance Rendered Sphere where
    norm :: Point -> Sphere -> Vec3
    norm p (Sphere c r _ _) = normalize $ sub c p

    trace :: Ray -> Sphere -> Maybe Double -- пересечение прямой и шара
    -- links [5]
    trace (Ray o dir) (Sphere center r _ _) =
        let oc = sub o center
            a = dot dir dir
            b = 2.0 * dot oc dir
            c = dot oc oc - r * r
            d = b * b - 4.0 * a * c in
                if d < 0
                    then Nothing
                else Just ((-b - sqrt d) / 2.0 * a )

    -- color :: Point -> Sphere -> Color
    -- color _ _ = Color 128.0 128.0 0.0 ??