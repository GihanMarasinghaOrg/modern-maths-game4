import GameServer.Commands
import Mathlib.Tactic.Ring

World "Arithmetic"
Level 1
Title "Commutativity"

Introduction "
Hi! We'll show that $a * b = b * a$.

'ring' can be used to simplify and prove equalities involving polynomial-like
expressions. Write 'ring' to solve the goal!"

/-- `ring`simplifys and proves equalities involving polynomial-like
expressions in commutative rings. It leverages the algebraic properties
 of addition and multiplication to handle complex expressions efficiently.
--/
TacticDoc «ring»

NewTactic «ring»

/-- Let $a$ and $b$ be natural numbers. Then $a * b = b * a$
--/
Statement (a b : ℕ): a * b = b * a:= by
  Template
    ring
Conclusion "
Well done!"
