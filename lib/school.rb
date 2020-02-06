# code here!
class School
  attr_reader :name


  def initialize(name)
    @name=(name)
    @roster = {}
  end

  def add_student(name, age)
    if self.roster.key?(age)
      self.roster[age] << name
    else
      self.roster[age] = [name]
    end
  end

  def roster
    @roster
  end

  def grade(age)
    self.roster[age]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
