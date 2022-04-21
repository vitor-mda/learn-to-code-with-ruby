module EachWithIndexChallenge2
    def self.answer(numbers)
        # Prints the product of the element and its index pos.
        # if the index position is greater than the element
        # Create this within a method
        return if numbers.nil? || !(numbers.is_a? Array) || numbers.empty?

        printed_products = []
        numbers.each_with_index do |number, index|
            if index > number
                product = number * index
                puts "#{number} * #{index} = #{product}"
                printed_products.push(product)
            end
        end

        printed_products
    end
end