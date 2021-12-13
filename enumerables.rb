##My Each
# Extend the Array class to include a method named my_each that takes a block, calls the block on every element of the array, and returns the original array. Do not use Enumerable's each method. I want to be able to write:
class Array
    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
            i += 1
        end
        self
    end
 # calls my_each twice on the array, printing all the numbers twice.
return_value = [1, 2, 3].my_each do |num|
puts num
end.my_each do |num|
  puts num
end
# # => 1
#      2
#      3
#      1
#      2
#      3#
p return_value  # => [1, 2, 3]

#My Select
#Now extend the Array class to include my_select that takes a block and returns a new array containing only elements that satisfy the block. Use your my_each method!#
#Example:

   def my_select(&prc)
       result = []
       self.my_each do |ele|
        result << ele if prc.call(ele)
       end
       result
    end



    p a = [1, 2, 3]
    p a.my_select { |num| num > 1 } # => [2, 3]
    p a.my_select { |num| num == 4 } # => []

    # My Reject
    # Write my_reject to take a block and return a new array excluding elements that satisfy the block.
    def my_reject(&prc)
        result = []
        self.each {|num| result << num if !prc.call(num)}
        result
    end
    # Example:

    p a = [1, 2, 3]
    p a.my_reject { |num| num > 1 } # => [1]
    p a.my_reject { |num| num == 4 } # => [1, 2, 3]

    # My Any
    # Write my_any? to return true if any elements of the array satisfy the block and my_all? to return true only if all elements satisfy the block.

    # Example:
    def my_any?(&prc)
        self.any? {|num| prc.call(num) }
    end

    def my_all?(&prc)
        self.all? {|num| prc.call(num) }
    end


    p a = [1, 2, 3]
    p a.my_any? { |num| num > 1 } # => true
    p a.my_any? { |num| num == 4 } # => false
    p a.my_all? { |num| num > 1 } # => false
    p a.my_all? { |num| num < 4 } # => true

#My Flatten
#my_flatten should return all elements of the array into a new, one-dimensional array. Hint: use recursion!
#
#Example:

    def my_flatten
        return [num] if num.is_a?(Array)
        result = []
        self.each do |num|
            result += self.my_flatten
        end
        result
    end

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]

end