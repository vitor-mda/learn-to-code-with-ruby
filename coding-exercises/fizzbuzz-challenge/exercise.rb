module FizzbuzzChallenge
    def self.fizzbuzz(number)
        # If the number is divisible by 3, output Fizz
        # If the number is divisible by 5, output Buzz
        # If the number is divisible by BOTH 3 and 5, output Fizzbuzz
        value = nil

        value = "Fizz" if number % 3 == 0

        if number % 5 == 0
            if value.nil? then value = "Buzz"
            else value.concat("buzz")
            end
        end

        value
    end
end