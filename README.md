# SET CARD GAME 

"Set" is a card game where players aim to identify a "set" of cards on the table. Each card features four attributes: Color (red, green, or purple), Shape (diamond, squiggle, or oval), Shading (solid, empty, or striped), and Number (one, two, or three). A set consists of three cards with values in each property that are either all the same or all different. For instance, "two red solid squiggles," "one green solid diamond," and "three purple solid ovals" form a set. The game begins with 12 face-up cards, and players grab a set when they spot one. New cards replace the identified sets. If no set is found, three more cards are dealt. The game concludes when there are no cards left, and the player with the most sets wins.

This project implements the "Set" card game in Ruby, a game where players attempt to find groups of cards that satisfy a particular criterion. It is a speed game where 12 cards are dealt face-up, and players try to be the first to make a set from the visible cards. This game is text-based (i.e., using the console). The basic functionality of this game is to deal the appropriate number of cards, verify the correctness of player-identified sets, replace the identified cards with new ones, and keep track of score to identify a winner.


## Table of Contents:
    
1) Game Rules
2) Features
3) File and Structure
4) How to Run and get started?
5) Implementation Details



## Game Rules: 

The game starts with 12 cards dealt face-up. Players take turns identifying sets of three cards based on color, shape, number, and shading. A set is valid if, for each property, the cards are either all the same or all different. Players earn points for valid sets, and new cards replace the identified sets. The game continues until a certain condition is met (e.g., no more valid sets). The player with the highest score at the end is declared the winner.


## Features

Flexible number of players: Easily configure the number of players in the game. 
Dynamic deck generation: The deck is generated with different combinations of color, shape, number, and shading.
Score tracking: The game keeps track of players' scores and declares a winner at the end.


## Files and Structure:

1. `card.rb`: Defines the Card class representing a single card.
2. `deck.rb`: Implements the Deck class for creating and managing the deck of cards.
3. `board.rb`: Contains the Board class representing the game board.
4. `player.rb`: Implements the Player class, which manages player actions.
5. `setgame.rb`: The main file that orchestrates the game, player turns, and gameplay logic.



## How to Run and get started?

    ==> Requirements:
        - Ruby (version 3.0.1)

    Ensure you have Ruby installed on your system. 

    Store the provided Ruby files (board.rb, card.rb, deck.rb, player.rb, setgame.rb) in the same directory. Or just clone the project.

    Open a terminal or command prompt.

    Navigate to the directory where the Ruby files are saved. You don't need to navigate to lib folder.

    Run the game by executing the following command: ruby main.rb

    Follow the prompts to enter the number of players and player's names.

    And Start Playing, Follow the prompts and keep playing until the deck is empty and it will declare the winner and show the points for each player.


## mplementation Details

    The code uses object-oriented programming principles, with classes for Board, Card, Deck, Player, and setgame.
    The generate_deck method in the Deck class creates a deck of Set cards with various properties.
    The valid_set method in the Game class checks if a set of cards is valid based on the game rules.
