class SportsTeam

attr_reader(:name, :players, :coach, :points)
attr_writer(:name, :players, :coach, :points)


  def initialize(name, players, coach, score)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players << new_player
  end

  def check_players(player_to_check)
    for player in @players
       if player == player_to_check
         return true
       else
         return false
       end
    end
  end

  def change_score(new_points)
     if new_points > 0
       return @points = new_points += @points
    end
  end
  # def set_coach(new_name)
  #   @coach = new_name
  # end

  # def name
  #   @name = name
  # end

  # def players
  #   @players = players
  # end

  # def coach
  #   @coach = coach
  # end
end
