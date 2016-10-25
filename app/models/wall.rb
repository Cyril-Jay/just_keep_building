class Wall < ApplicationRecord

  def initialize(length, height)
    @length = length.to_i
    @height = height.to_i
  end

  def square_footage
    square_footage = @length * @height
  end

  def lenght_in_inches
    lenght_in_inches = @length * 12
  end

  def studs
    studs = 2 + (lenght_in_inches / 16).truncate
  end

end
