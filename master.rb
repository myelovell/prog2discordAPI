# 2021-04-28

require 'discordrb'

bot = Discordrb::Bot.new token: '<token here>'

RPS_Game.new(RPSBot.new("Robban"), HumanPlayer.new("My"))
RPS_Game.new(RPSBot.new("Robban"), RPSBot.new("Bert"))
RPS_Game.new(HumanPlayer.new("Robban"), HumanPlayer.new("Bert"))


class RPS_Game
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        #@botTries = 3
        #@playerTries = 3
        #@choices = ["rock", "paper", "scissors"]
        @responses = {
            # :occation => response
            :greeting =>  "OK! We have 3 tries each to win, write 'rock', 'paper' or 'scissors' when you're ready. I promise I wont cheat!",
            :invalidGuess =>  "invalid answer, try 'rock', 'paper' or 'scissors'",
            :sameGuess =>  "Our choices were equal, try again!",
            :pRockWin =>  "Argh! You smashed my scissors to a pulp!",
            :pRockLose =>  "Hah! My paper was too powerful for your rock!",
            :pPaperWin =>  "How?? You beat my rock with a paper?!",
            :pPaperLose =>  "You thought a piece of paper would beat my scissors, oh how wrong you were!",
            :pScissorsWIn =>  "Well done! You cut my paper to shreds",
            :pScissorsLose =>  "Boohoo, I made your scissors look like a bent spachula with my rock!",
            
            
            pWin: "Well done #{game.user.name}, you are the superior being...",
            pLose: "https://www.youtube.com/watch?v=j8PxqgliIno",

        }
    end


    def reply(message)
        response = @responses(message)
        return response != nil ? response : "Invalid symbol"

    def start_game()
        while player1.wins < 3 && player2.wins < 3
           p1 = player1.choice
           p2 = player2.choice
           jnmfr p1 och p2 fr att ge pong
           player1.add_win
        end
        
    end
    #def method_missing(args)
end


