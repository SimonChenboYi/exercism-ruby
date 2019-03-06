module Gigasecond
def self.from(birthday = Time.new.utc)
  result = birthday + 1000000000
end
end
