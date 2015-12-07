class Company

  attr_accessor :company_name
  attr_reader :employees

  def initialize(name)
    @company_name  = name
    @employees   = []
  end

  def add_employee(employee)
    @employees << employee
  end
end


class Employee

  attr_accessor :name, :position
  attr_reader :id

  def initialize(name, position)
    @name     = name
    @position = position
    @id       = rand(100_000_000).to_s.insert(2, '-').insert(6, '-')
  end
end

