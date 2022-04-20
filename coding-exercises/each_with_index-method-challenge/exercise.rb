module EachWithIndexChallenge
    def self.answer(array)
        # Write a loop that gives me a sum of
        # the products of each index and its value
        return if array.nil? || !(array.is_a? Array) || array.empty?

        sum = 0
        array.each_with_index { |element, i| sum += element * i}

        sum
    end
end