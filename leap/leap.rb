class Year
  def self.leap?(int)
    return true if (int % 400).zero?

    return false if (int % 100).zero?

    return true if (int % 4).zero?

    false
  end
end
