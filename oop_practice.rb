class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    (@hits.to_f / @at_bats)
  end

  def on_base_percentage
    ((@hits.to_f + @walks) / @at_bats)
  end
end

player = BaseballPlayer.new(5, 2, 31)
p player.batting_average
p player.on_base_percentage