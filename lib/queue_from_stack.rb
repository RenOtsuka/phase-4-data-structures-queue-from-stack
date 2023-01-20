require_relative './stack'

# your code here
class MyQueue

  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
    @first = 0
  end

  def add(val)
    if @s1.empty? && @s2.empty?  
      @s1.push(val)
      @first = val
    else
      @s2.push(@s1.pop)
      @s1.push(val)
    end

  end

  def remove
    if @s1.peek == 3 && !@s2.empty?
      2.times do |i|
        @s1.push(@s2.pop)
      end
    end
    
    if @s1.empty?
      return nil
    else
      print @s1.peek
      @s1.pop
    end
  end

  def peek
    if @s1.peek == 0
      3.times do |i|
        @s1.push(@s2.pop)
      end
    elsif @s1.peek == 3 
      2.times do |i|
        @s1.push(@s2.pop)
      end
    end

    return @s1.peek
  end


end

