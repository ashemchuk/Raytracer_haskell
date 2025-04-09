module Config where
import Renderable (Ray, Point)
import Vector
width :: Int
width = 45
aspectRatio :: Double
aspectRatio = 16.0 / 9.0
height :: Integer
height = floor $  aspectRatio * fromIntegral width
camera :: Point
camera = Vec3 (-viewField) 0 0
viewField :: Double
viewField = 10