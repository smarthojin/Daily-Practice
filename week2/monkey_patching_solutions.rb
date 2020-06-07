class Array
  
  def My_Each(&block)
    self.length.times do |i|
      block.call(self[i])
    end
    
    self

  end




end



def My_Each(array, &block)
  array.length.times do |i|
    block.call(array[i])
  end
  array
end

