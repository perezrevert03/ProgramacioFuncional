module Exercici1 where

import qualified Circle
import qualified Triangle

main = putStrLn ("L'àrea d'un cercle de radi 2 és " ++ show (Circle.area 2) ++ " i l'àrea d'un triangle de base 4 i alçària 5 és " ++ show(Triangle.area 4 5))