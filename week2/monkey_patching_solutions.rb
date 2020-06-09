class Array
  
  def my_each(&block)
    self.length.times do |i|
      block.call(self[i])
    end
    
    self

  end
 
  def my_select(&block)  
    results = []
    self.my_each do |i|
      results.push(i) if block.call(i)
    end 
    results
  end

  def my_reject(&block)
    results = []
    self.my_each do |i|
      results.push(i) unless block.call(i)
    end
    results
  end

  def my_any?(&block)
    self.my_each do |i|
      return true if block.call(i)
    end
    false
  end
    
  def my_all?(&block)
    self.my_each do |i|
      return false if !block.call(i)
    end
    true
  end
 

  # def my_flatten_non_recursion
  #   results = [] 
  #   starter = true
  #   while starter 
  #     my


  # end

  def my_flatten_recursive 
    results = []
    self.my_each do |ele|
      if ele.is_a? Array 
        results.concat(ele.my_flatten_recursive)
      else 
        results<< ele
      end
    end
    results

  end


end

# [ [1,23,24,], [123,[23],41], 123] 
 

# [ [1,[23, [24]]], 123, [[1,2,3, [23, [1,[3,4]]]]]] = [1, 23, 24 ,123 ,1 ,2 ,3, 23, 1, 3, 4]



def nc_my_each(array, &block)
  array.length.times do |i|
    block.call(array[i])
  end
  array
end

def nc_my_select(array, &block)
  results = []
  array.my_each do |i|
    results.push(i) if block.call(i)
  end
  results
end

def nc_my_reject(array, &block)
  results = []
  array.my_each do |i|
    result.push (i) unless block.call{i}
  end
  results
end

def my_any?(array, &block)
  array.my_each do |i|
    return true if block.call(i)
  end
  false
end

def my_all?(array, &block)
    array.my_each do |i|
      return false if !block.call(i)
    end
    true
end

# array.my_any?{ |ele| ele.is_a? String}


var1 = [ [1,23,24,], [123,[23],41], 123]

var2 = var1.my_flatten_recursive

print(var2)