# 2021-04-28

require 'discordrb'

bot = Discordrb::Bot.new token: '<token here>'

class RPS_Game
    def initialize()
        @botTries = 3
        @playerTries = 3
        @choices = ["rock", "paper", "scissors"]
        @responses = {
            #occation => response
            greeting: "OK! We have 3 tries each to win, write 'rock', 'paper' or 'scissors' when you're ready. I promise I wont cheat!",
            invalidGuess: "invalid answer, try 'rock', 'paper' or 'scissors'",
            pRockWin: "Argh! You smashed my scissors to a pulp!",
            pRockLose: "Hah! My paper was too powerful for your rock!",
            pPaperWin: "How?? You beat my rock with a paper?!",
            pPaperLose: "You thought a piece of paper would beat my scissors, oh how wrong you were!",
            pScissorsWIn: "Well done! You cut my paper to shreds",
            pScissorsLose: "Boohoo, I made your scissors look like a bent spachula with my rock!",
            equal: "Our choices were equal, try again!",
            pWin: "Well done #{game.user.name}, you are the superior being...",
            pLose: "https://www.youtube.com/watch?v=j8PxqgliIno",

        }
    end
    
    def game()
        while @botTries > 0 || playerTries > 0 #start game
            
        end
        
    end

    #def method_missing(args)
       

end


