-- module Main where

import Shapes
import Config
import Renderable
import Vector
import Data.Maybe (fromMaybe)
import Scene
getRay :: Double -> Double -> Ray -- (x, y) - pixel
getRay x y = Ray {from = camera , direction = normalize ((Vec3 x y 0) - camera)}

allRays = [uncurry getRay| x <- [0 .. (width - 1)], y <- [0 .. (height - 1)]]

intersect :: Renderable a => Ray -> a -> Double
intersect ray obj = fromMaybe (-1) $ trace ray obj

getPixelColor :: Ray -> Color
getPixelColor ray = color (scal (fst visible) (direction ray - from ray) ) (snd visible)
    where visible = minimum $ filter (\(p, o) -> p > 0) $  map (\o -> (intersect ray o, o)) scene
