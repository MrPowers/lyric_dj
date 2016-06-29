module SongsHelper
  def to_difficulty(lines_per_blank)
    mapping = {
      1 => "Insane",
      2 => "Hard",
      3 => "Normal",
      4 => "Easy"
    }
    mapping[lines_per_blank.to_i]
  end
end
