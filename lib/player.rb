class Player
  attr_reader :name, :position

  def initialize(name_and_position = {})
    @name = name_and_position[:name]
    @position = name_and_position[:position]
  end
end
