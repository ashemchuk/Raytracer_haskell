module Config where
import Renderable (Ray, Point)
import Vector
height = 1024
width = 768
camera :: Point
camera = Vec3 (-viewField) 0 0
viewField :: Double
viewField = 10