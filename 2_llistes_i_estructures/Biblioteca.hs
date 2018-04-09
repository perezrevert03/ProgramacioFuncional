module Biblioteca where

import Concat
type Person = String
type Book = String
type Database = [(Person,Book)]

exampleBase :: Database
exampleBase = [("Alicia","El nombre de la rosa"),("Juan","La hija del canibal"),("Pepe","Odesa"),("Alicia","La ciudad de las bestias")]

obtain :: Database -> Person -> [Book] 
obtain dBase thisPerson = [book | (person,book) <- dBase, person == thisPerson]

borrow :: Database -> Book -> Person -> Database
borrow dBase thisBook thisPerson = concat' [dBase,[(thisPerson,thisBook)]]

ret :: Database -> (Person,Book) -> Database
ret [] (thisPerson,thisBook) = []
ret (x:xs) (thisPerson,thisBook) = if x == (thisPerson,thisBook) then xs else concat' [[x],ret xs (thisPerson,thisBook)]