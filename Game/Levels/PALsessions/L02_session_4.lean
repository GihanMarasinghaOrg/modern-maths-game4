import GameServer.Commands
import Game.Metadata

import Mathlib.Data.Nat.Defs
import Mathlib.Tactic.Linarith


World "PALsessions"
Level 2
Title "Session 4"

Introduction "
Let f: ℤ → ℤ be the function f(x):= 2x


We'll show that the function f is injective.
"


/-- The `intros` tactic is used to introduce variables of any type.
-/

TacticDoc intros


/-- The `have` tactic is used to introduce a hypothesis into the context. For example, `have h : x + y = x + y := from rfl,` introduces the hypothesis `h : x + y = x + y` into the context. `have` requires a tactic proof of the claimed result. Here, `from rfl` is a tactic proof of `x + y = x + y`.

More generally, `have h : α := T` introduces `h : α` into the context if `T` is a tactic proof of `α`.
-/

TacticDoc «have»


/-- The `show` tactic is used to state what is being proved. If, for example, the target is to prove `x + y = x + y`, you can indicate and prove this using `show x + y = x + y := from rfl`.

More generally, if the target is to prove `α`, you can close the goal using `show α := T` where `T` is a tactic proof of `α`.
-/

TacticDoc «show»



/-- The `linarith` tactic is used to prove many linear equations and inequalities.
-/

TacticDoc linarith


/--`sorry` for internal use
-/

TacticDoc «sorry»


NewTactic intros «have» «show» linarith

NewHiddenTactic «sorry»

/-- `f_injective` is the theorem that the function `f` is injective. In other words, `∀ (x₁ x₂ : ℤ), f(x₁) = f(x₂) → x₁ = x₂`.
-/

TheoremDoc f_injective as "f_injective" in "PALsessions"


open Function
def f (x : Int) : Int := (2 : Int) * x

/-- Let f: ℤ → ℤ be the function f(x):=2x. Prove that f is injective.
-/
Statement f_injective : Injective f := by
  Hint " To prove f is injective we must show `∀ x₁ x₂ : ℤ, f x₁ = f x₂ → x₁ = x₂`.
  The first step in our English language proof would be to `assume x₁ x₂ : ℤ`. The Lean equivalent of `assume` is the tactic `intros` which introduces variables of any type."
  Hint " Type `intros x₁ x₂` in the text box and press \"Execute\".

  ₁ and ₂ are typed backslash 1 and backlash 2"
  intros x₁ x₂
  Hint " Our goal has now changed to prove `f x₁ = f x₂ → x₁ = x₂`. The next step in our English language proof would be to assume a hypothesis, h. Taking inspiration from above, type the correct tactic and variable into the text box and press \"Execute\"."
  Hint (hidden := true) " Type `intros h` in the text box and press \"Execute\"."
  intros h
  Hint " We now have an assumption `h: f x₁ = f x₂` and a new goal to prove `x₁ = x₂`. The next step in our English language proof would be to rewrite our hypothesis using the definition of our function. In Lean we use the `have` tactic to do so."
  Hint " Type `have h₁ : sorry := h` in the text box, filling in `sorry` with the definition of the function and press \"Execute\".

  Use * instead of x for multiplication in Lean."
  have h₁ : 2 * x₁ = 2 * x₂ := h

  Hint "Our goal of x₁ = x₂ now follows by arithmetic. Explore the definitions of tactics by clicking on the boxes in the right hand pane. Select the tactic that will prove our result by arithmetic, type it in the text box and press \"Execute\"."
  linarith
Conclusion "
Well done! You have completed the proof!

Does this proof still not make sense? Ask ProofGuide to explain to you! https://chatgpt.com/g/g-sbJfmQ6te-proof-guide
"
