module Scene where
import Shapes
import Vector
import Renderable
-- scene :: [Renderable a]
scene = [sphere1, sphere2]
sphere1 = Sphere {center = Vec3 50 50 50, radius = 25, sphereColor = Vec3 128 128 0, reflectivity = 1}
sphere2 =Sphere {center = Vec3 70 70 70, radius = 50, sphereColor = Vec3 255 0 0, reflectivity = 1}