class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    if self.latest ==  self.personal_best
      "Your latest score was #{ self.latest }. That's your personal best!"
    else
      "Your latest score was #{ self.latest }. That's #{ self.personal_best - self.latest } short of your personal best!"
    end
  end
end
