:set -XOverloadedStrings
:set prompt ""
:module Sound.Tidal.Context

(cps, nudger, getNow) <- cpsUtils'

(d1,t1) <- superDirtSetters getNow
(d2,t2) <- superDirtSetters getNow
(d3,t3) <- superDirtSetters getNow
(d4,t4) <- superDirtSetters getNow
(d5,t5) <- superDirtSetters getNow
(d6,t6) <- superDirtSetters getNow
(d7,t7) <- superDirtSetters getNow
(d8,t8) <- superDirtSetters getNow
(d9,t9) <- superDirtSetters getNow

let attsin a b c = attack (slow a ( scale b c $ sine1))
let rsin a b c = release (slow a ( scale b c $ sine1))
let bsin a b c = begin (slow a ( scale b c $ sine1))
let attsaw a b c = attack (slow a ( scale b c $ saw1))
let rsaw a b c = release (slow a ( scale b c $ saw1))
let bsaw a b c = begin (slow a ( scale b c $ saw1))
let ssine a b c = speed (slow a ( scale b c $ sine1))
let ssaw a b c = speed (slow a ( scale b c $ saw1))
let bps x = cps (x/2)
let hush = mapM_ ($ silence) [d1,d2,d3,d4,d5,d6,d7,d8,d9]
let solo = (>>) hush

:set prompt "tidal> "