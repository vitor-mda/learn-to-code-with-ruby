# Implement a `value_count` method and accepts a hash and a value as an argument.
# The method should return the number of times the value
# appears among all the values in the hash.
def value_count(hash, value)
    count = 0
    hash.each_value { |v| count += 1 if v == value}
    count
end

module Exercise4
    def self.answer(hash, value)
        value_count(hash, value)
    end
end
