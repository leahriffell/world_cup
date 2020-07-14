class Team
  attr_reader :country, :players
  # attr_writer :eliminated
  # since we are instructed to only user attr_reader for mod1, the eliminated method turns it into a writable attribute

  def initialize(country, eliminated = false)
    @country = country
    @eliminated = eliminated
    @players = []
  end

  def eliminated=(eliminated)
    @eliminated = eliminated
  end

  def eliminated?
    @eliminated
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(position)
    @players.select do |player|
      player.position == position
    end
  end
end
