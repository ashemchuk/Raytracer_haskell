module Main where

import Shapes
import Config
import Renderable
import Vector
import Data.Maybe 
import Scene
import System.IO



-- getRay :: Double -> Double -> Ray -- (x, y) - pixel
-- getRay x y = Ray {from = camera , direction = normalize ((Vec3 x y 0) - camera)}

-- allRays = [uncurry getRay| x <- [0 .. (width - 1)], y <- [0 .. (height - 1)]]

-- intersect :: Renderable a => Ray -> a -> Double
-- intersect ray obj = fromMaybe (-1) $ trace ray obj

-- getPixelColor :: Ray -> Color
-- getPixelColor ray = color (scal (fst visible) (direction ray - from ray) ) (snd visible)
--     where visible = minimum $ filter (\(p, o) -> p > 0) $  map (\o -> (intersect ray o, o)) scene



main :: IO ()
main = do
    let out = "output.ppm"
    
    writeFile out $ "P3\n" ++ show height ++ " " ++ show width ++ "\n" ++ "255" ++ "\n"
    appendFile out $ foldl (\acc (r, g, b) -> acc ++ show r ++ " " ++ show g ++ " " ++ show b ++ "\n")  "" [(floor $ (fromIntegral r / fromIntegral width) *  255.99, floor $  ( fromIntegral g / fromIntegral height) * 255.99, floor $ b * 255.99) |  r <- [0 .. (width - 1)], g <- [0 .. (height - 1)], b <- [0]] 

