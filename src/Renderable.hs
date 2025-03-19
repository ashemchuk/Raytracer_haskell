module Renderable where
import Vector

type Point = Vec3 
type Color = Vec3 -- (R, G, B)

data Ray = Ray {from :: Point, direction :: Vec3} 
class Renderable a where
    norm :: Point -> a -> Vec3
    color :: Point -> a -> Color
    trace :: Ray -> a -> Maybe Double -- расстояние до пересечения
    -- reflect :: a -> Double
-- link [3]
-- norm(p) находит нормаль к поверхности предмета в точке p. Нормаль направлена наружу и имеет длину 1.
-- color(p) говорит какой цвет на поверхности предмета в точке p.
-- trace(ray) идёт вдоль луча ray и останавливается там где луч пересекает поверхность предмета. Этот метод возвращает координаты пересечения и расстояние от начала луча до точки пересечения.
