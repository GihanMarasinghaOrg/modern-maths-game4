import GameServer.Commands
import Game.Metadata

import Mathlib.Data.Set.Basic

World "PALsessions"
Level 1
Title "Session 2"

Introduction "Let `X` be a type and let `S` and `T` be sets on `X`.

We'll prove that `S ∩ T = T ∩ S`.

To make things easier, a proof template has been provided for you.

Firstly, `apply Set.ext` has been used to change the goal of proving `S ∩ T = T ∩ S` into `∀ x : X, x ∈ S ∩ T ↔ x ∈ T ∩ S` using the definition of set extensionality.

Secondly, `intros x` has been used to introduce the variable `x : X`.

The new goal is to `show x ∈ S ∩ T ↔ x ∈ T ∩ S`. We do so with a proof by calculation, which has already been set up using the `calc` tactic.

You will need to fill in the red `sorry`s with appropriate tactics or theorems to justify each line of proof.

The `sorry` tactic a really useful way to check if the existing structure of your proof is correct when you're not sure where to go next or how to justify certain lines. This tactic will be available for you in this level and future levels!

The first step in the proof by calculation rewrites `x ∈ S ∩ T` using the definition of set intersection. Take a look in the right hand pane to find a tactic or theorem that is used for proving goals of the form `P ↔ Q` where `P` and `Q` are definitionally equal. Replace `sorry` with this tactic.

The second step in the proof by calculation uses a theorem to justify the commutativity of and. Find this theorem in the right hand pane and replace the `sorry` with `rw [theorem]`.

The final step in the proof by calculation rewrites `(x ∈ T) ∧ (x ∈ S)` using the definition of set intersection. Take a look in the right hand pane to find a tactic or theorem that is used for proving goals of the form `P ↔ Q` where `P` and `Q` are definitionally equal. Replace `sorry` with this tactic.
"

/-- The `calc` tactic is used to write a 'calculation-style' proof.
-/
TacticDoc «calc»



/-- The `rw` tactic is used to rewrite the target or a hypothesis.

If `h` is the name of a theorem `rw [h]` rewrites the target using `h`. For example, if `h` is
the theroem `a = b`, then `rw [h]` causes every instance of `a` in the target to be replaced with
`b`.
-/

TacticDoc «rw»


/-- The `intros` tactic is used to introduce variables of any type.
-/

TacticDoc intros



/-- Provided with a theorem name and any number of conditions of the theorem, the `apply` tactic is used for opening as many new goals as are necessary to fill in proofs of the remaining conditions of the theorem.
-/

TacticDoc «apply»



/-- The `rfl` tactic is used for proving goals of the form `x = y` where `x` and `y` are definitionally equal. It also proves goals of the form `P ↔ Q` if `P` and `Q` are definitionally equal.
-/

TacticDoc «rfl»



/-- The `show` tactic is used to state what is being proved. If, for example, the target is to prove `x + y = x + y`, you can indicate and prove this using `show x + y = x + y := from rfl`.

More generally, if the target is to prove `α`, you can close the goal using `show α := T` where `T` is a tactic proof of `α`.
-/

TacticDoc «show»

NewTactic «calc» «rw» «intros» «apply» «rfl» «show»

/-- The theorem `And.comm` states the commutativity of an `and` statement. For example, it does not matter whether you say `I went to see Jack and Jill` or `I went to see Jill and Jack` - the meaning is still the same.
-/

TheoremDoc And.comm as "And.comm" in "PALsessions"


/-- `Template` for internal use
-/
TacticDoc Template

/-- `Hole` for internal use
-/
TacticDoc Hole

/-- `sorry` for internal use
 -/

TacticDoc «sorry»

NewHiddenTactic Template Hole «sorry»



/-- The theorem `inter_comm` states the commutativity of the intersection of sets.
-/
TheoremDoc inter_comm as "inter_comm" in "PALsessions"


/-- The definition `Set.ext` is when two sets are extensionally equal. Suppose S and T are sets on a type X.
If the target is to prove S = T, then using `apply Set.ext` changes the target to `∀ x : X, x ∈ S ↔ x ∈ T`.

-/
DefinitionDoc Set.ext as "Set.ext"

NewTheorem And.comm
NewDefinition Set.ext

variable {X : Type}

/-- Let X be a type and let S and T be sets on X. Prove that S ∩ T = T ∩ S. -/
Statement inter_comm (S T : Set X) : S ∩ T = T ∩ S := by
  Template
  apply Set.ext
  intros x
  show x ∈ S ∩ T ↔ x ∈ T ∩ S
  calc
      x ∈ S ∩ T ↔ (x ∈ S) ∧ (x ∈ T) := by Hole rfl
              _ ↔ (x ∈ T) ∧ (x ∈ S) := by Hole rw [And.comm]
              _ ↔ x ∈ T ∩ S         := by Hole rfl
Conclusion "
Well done! You have completed the proof!

Does this proof still not make sense? Ask ProofGuide to explain to you! https://chatgpt.com/g/g-sbJfmQ6te-proof-guide

"
