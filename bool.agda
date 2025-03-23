data Bool : Set where
    true : Bool
    false : Bool

not : Bool → Bool
not true = false
not false = true

_&&_ : Bool → Bool → Bool
true && true = true
_ && _ = false 

_||_ : Bool → Bool → Bool
false || false = false
_ || _ = true