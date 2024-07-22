import GameServer.Commands
import Mathlib.Data.Set.Basic

World "PAL sessions"
Level 1
Title "Session 2"

Introduction "Insert intro here
"

/-- `calc` is used to write a 'calculation-style' proof
-/
TacticDoc «calc»

/-- `ext` used for ...
-/

TacticDoc «ext»

NewTactic «calc» «ext»

/-- `Template` for internal use
-/
TacticDoc Template

/-- `Hole` for internal use
-/
TacticDoc Hole

NewHiddenTactic Template Hole


variable {X : Type}
variable {S T : Set X}

/-- Let X be a type and let S and T be sets on X. Prove that S ∩ T = T ∩ S. -/
Statement inter_comm (S T : Set X) : S ∩ T = T ∩ S := by
  Template
  apply Set.ext
  intro x
  show x ∈ S ∩ T ↔ x ∈ T ∩ S
  calc
      x ∈ S ∩ T ↔ (x ∈ S) ∧ (x ∈ T) := by Hole rfl
              _ ↔ (x ∈ T) ∧ (x ∈ S) := by Hole rw [And.comm]
              _ ↔ x ∈ T ∩ S       := by Hole rfl
Conclusion "
Well done!
"