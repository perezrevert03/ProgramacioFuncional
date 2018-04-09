module DaysAmonth where
import Leapyear
daysamonth :: (Int,Int) -> Int
daysamonth (m,a) = if  m == 2 && leapyear a  then 29 else if m == 2 then 28 else if m == 11 || m == 9 || m == 6 || m == 4 then 30 else 31