# Write an evens_and_odds method that accepts an array of whole numbers.
# It should return an array of 2 arrays.
# - The first nested array should contain only the odd numbers.
# - The second nested array should contain only the even numbers.
# If there are no even or odd numbers, the respective inner array should be empty.
def evens_and_odds(numbers)
    numbers.partition { |number| number.odd? }
end

module Exercise2
    def self.answer(numbers)
        evens_and_odds(numbers)
    end
end