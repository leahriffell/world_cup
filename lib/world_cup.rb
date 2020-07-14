class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_players = []
     @teams.each do |team|
      if team.eliminated? == false
        active_players << team.players_by_position(position)
      end
    end
    active_players.flatten
  end

  def all_positions
    positions = []
    @teams.each {|team| team.players.each { |player| positions << player.position }}
    positions.uniq
  end

  def all_players_by_position
    result = {}
    all_positions.each do |position|
      result[position] = active_players_by_position(position)
    end
    result
  end
end
