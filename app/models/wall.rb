class Wall < ApplicationRecord
  validates :wall_name, presence: true
  validates :height, presence: true
  validates :length, presence: true

  def square_footage
    square_footage = @length.to_i * @height.to_i
  end

  def lenght_in_inches
    lenght_in_inches = @length.to_i * 12
  end

  def studs
    studs = 2 + (lenght_in_inches / 16.to_f).ceil
  end

end
