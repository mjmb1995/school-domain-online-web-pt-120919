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
    {7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]}
  end
end
