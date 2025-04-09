module Config where
import Renderable (Ray, Point)
import Vector
height = 64
width = 64
camera :: Point
camera = Vec3 (-viewField) 0 0
viewField :: Double
viewField = 10