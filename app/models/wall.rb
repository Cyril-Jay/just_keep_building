class Wall < ApplicationRecord
  validates :wall_name, presence: true
  validates :height, presence: true
  validates :length, presence: true

  def square_footage
    length.to_i * height
  end

  def lenght_in_inches
    length.to_i * 12
  end

  def studs
    2 + (lenght_in_inches / 16.to_f).ceil
  end

  def drywall
    (square_footage / 32.to_f).ceil
  end

  def insulation
    (square_footage / 40.to_f).ceil
  end
end
