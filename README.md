[![Build Status](https://travis-ci.org/pelensky/ttt_core.svg?branch=master)](https://travis-ci.org/pelensky/ttt_core)
[![Coverage Status](https://coveralls.io/repos/github/pelensky/ttt_core/badge.svg?branch=master)](https://coveralls.io/github/pelensky/ttt_core?branch=master)
# Tic Tac Toe Core Gem

This is a gem for the core logic of a Tic Tac Toe game built in Ruby. It will require a front end, and a human player that interacts with the front end to be played, ie. [ttt_cli](www.github.com/pelensky/ttt_cli), and [ttt_web]((www.github.com/pelensky/ttt_web)).

#### The Rules

The rules of tic-tac-toe are as follows:

* There are two players in the game (X and O)
* Players take turns until the game is over
* A player can claim a field if it is not already taken
* A turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if a player wins
* A game is over when all fields are taken
