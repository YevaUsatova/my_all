require 'pry'

def my_all?(collection)
    block_return_values = []
    i = 0
    while i < collection.length
        block_return_values.push yield (collection[i])
        i = i+1
    end
    if block_return_values.include?(false)
        false
     else
        true
    end
end
block_return_values = [true, false, false] 
my_all?([1,2,3]) {|i| i < 2}