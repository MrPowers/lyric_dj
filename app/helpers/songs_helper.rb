module SongsHelper
  def to_difficulty(lines_per_blank)
    mapping = {
      1 => "Insane",
      2 => "Hard",
      3 => "Normal",
      4 => "Easy"
    }
    mapping.fetch(lines_per_blank.to_i, "Normal")
  end
end
