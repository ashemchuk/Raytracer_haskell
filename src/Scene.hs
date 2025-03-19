module Scene where
import Shapes
import Vector
import Renderable
-- scene :: Renderable a => [a]
scene = [sphere1]
sphere1 = Sphere {center = Vec3 50 50 50, radius = 25, sphereColor = Vec3 128 128 0, reflectivity = 1}