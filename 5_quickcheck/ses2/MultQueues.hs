module MultQueues where

type Queue a = [a]

type QueueF a = ([a],[a])

empty :: QueueF a
empty = ([],[])

isEmpty :: QueueF a -> Bool
isEmpty ([],[]) = True
isEmpty _ = False

add :: a -> QueueF a -> QueueF a
add x ([],[]) = ([x],[])
add x (xs,[]) = (xs,[x])
add x (xs, ys) = (xs, x:ys)

front :: QueueF a -> a
front (x:xs,_) = x

remove :: QueueF a -> QueueF a
remove (x:xs, []) = (xs, [])
remove (x:[], ys) = (reverse ys, [])
remove (x:xs, ys) = (xs, ys)

trans :: QueueF a -> Queue a
trans (xs, ys) = xs ++ (reverse ys)

igual :: QueueF Int -> Queue Int -> Bool
igual (xs, ys) (zs) = igualSimple (trans (xs, ys)) (zs)

igualSimple :: Queue Int -> Queue Int -> Bool
igualSimple [] [] = True
igualSimple (x:xs) (y:ys) = if x == y then igualSimple (xs) (ys) else False
