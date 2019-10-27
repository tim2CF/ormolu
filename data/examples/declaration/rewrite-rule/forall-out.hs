{-# RULES
"fold/build" forall k z. foldr k z (build g) = g k z
  #-}

{-# RULES
"fusable/aux" forall x y.
  fusable x (aux y) =
    faux x y
  #-}

{-# RULES "rd_tyvs" forall a. forall (x :: a). id x = x #-}

{-# RULES "rd_tyvs'" forall f a. forall (x :: f a). id x = x #-}

{-# RULES "rd_tyvs''" forall (a :: *). forall (x :: a). id x = x #-}
