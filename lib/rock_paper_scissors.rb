# Homework perform in binomial by
# Antônio Lima
# Théo DURY

class RockPaperScissors
  

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end
  
  def self.winner(player1, player2)
  
    s1 = player1[1]
    s2 = player2[1]
    validate_strategy s1
    validate_strategy s2
    if s1 == 'R'
      return player2 if s2 == 'P'
    elsif s1 == 'P'
      return player2 if s2 == 'S'
    else
      return player2 if s2 == 'R'
    end
    player1
  end
  
  def self.validate_strategy(strategy)
    raise NoSuchStrategyError.new('Strategy must be one of R,P,S') unless strategy.match /[PRS]/
  end

  def self.tournament_winner(tournament)
    p1, p2 = tournament
    return self.winner(p1, p2) if p1[0].class == String
    p1 = self.tournament_winner(p1)
    p2 = self.tournament_winner(p2)
    self.tournament_winner([p1, p2])
  end

end
