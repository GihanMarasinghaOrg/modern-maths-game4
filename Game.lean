import GameServer.Commands

import Game.Levels.PALsessions

-- Here's what we'll put on the title screen
Title "Modern Mathematics Game"
Introduction
"
This is an interactive tool aimed at beginning mathematics undergraduates. You'll learn to prove
theorems online using a computer programme called Lean.

Each chapter is represented by a coloured circular button in the right-hand pane. Blue indicates your
current position, green is for completed chapters, and grey is for unread or incomplete chapters.

At every stage in a proof, there is a *target*, the thing you want to prove, and a *context*, the
set of things you have already proved or assumed at the beginning of your argument.
The target and context change throughout the proof.

The word *goal* is used to refer variously to the target or to the combination of target and context.

You'll use *tactics* to modify the goal until you have proved the target (called 'closing the goal').
Each tactic may invoke one or more *theorems*.
"

Info "
This game is part of the [exlean](https://exlean.org/) project.
"

/-! Information to be displayed on the servers landing page. -/
Languages "English"
CaptionShort "Modern Maths Game"
CaptionLong "Modern Mathematics Game"
-- Prerequisites "" -- add this if your game depends on other games
-- CoverImage "images/cover.png"

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
