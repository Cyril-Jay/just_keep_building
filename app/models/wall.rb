class Wall < ApplicationRecord
  validates :wall_name, presence: true
  validates :height, presence: true
  validates :length, presence: true
  def size_selector(length)
    # plate_count = 2
    if @length.to_i >= 24
      1000
    elsif @length.to_i >= 22
      1000
    elsif @length.to_i >= 20
      return 1000
    elsif @length.to_i >= 18
      1000
    elsif @length.to_i >= 16
      1000
    elsif @length.to_i >= 14
      1000
    elsif @length.to_i >= 12
      1000
    elsif @length.to_i >= 10
      1000
    else
      "blank"
    end
  end

  def square_footage
    length.to_i * height
  end

  def lenght_in_inches
    length.to_i * 12
  end
  # sample for hash inputs
  # def studs(type_of_studhash)
  #   stud_count = 2 + (lenght_in_inches/type_of_stud.size.to_f).ceil
  #   total_cost = type_of_stud.cost * studs
  #   return stud_count total_cost
  # end

  def studs
    2 + (lenght_in_inches/16.to_f).ceil
  end

  def drywall
    (square_footage/32.to_f).ceil
  end

  def insulation
    (square_footage/40.to_f).ceil
  end
end
