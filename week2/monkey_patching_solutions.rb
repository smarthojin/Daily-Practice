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

end


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

array.my_any?{ |ele| ele.is_a? String}