# My Each
# Extend the Array class to include a method named my_each that takes a block, calls the block on every element of the array, and returns the original array. Do not use Enumerable's each method. I want to be able to write:
class Array
    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
            i += 1
        end
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
#      3

p return_value  # => [1, 2, 3]