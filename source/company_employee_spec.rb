require_relative 'company_employee'

#Every method should be tested!
describe Employee do
  let(:shereef) { Employee.new("Shereef Bishay", "Master Of The Bootiverse") }

  describe '#name' do
    #Example test
    it 'should be readable' do
      expect(shereef.name).to eq("Shereef Bishay")
    end

    it 'should be changeable' do
      expect(shereef.name = "bob").to eq("bob")
    end
  end
  describe '#position' do
    #Example test
    it 'should be readable' do
      expect(shereef.position).to eq("Master Of The Bootiverse")
    end

    it 'should be changeable' do
      expect(shereef.position = "Janitor").to eq("Janitor")
    end
  end
  describe '#id' do
    #Example test
    it 'should be readable' do
      id = shereef.id.match(/\d{2}-\d{3}-\d{2}/)
      expect(shereef.id).should be_truthy
    end
  end
end

#Every method should be tested!
describe Company do
  let(:company) { Company.new("Panda Express") }
  let(:shereef) { Employee.new("Shereef Bishay", "Master Of The Bootiverse") }

  describe '#name' do
    #Example test
    it 'should be readable' do
      expect(company.company_name).to eq("Panda Express")
    end

    it 'should be changeable' do
      expect(company.company_name = "Baskin Robbins").to eq("Baskin Robbins")
    end
  end

  describe '#add_employee' do
    #Example test
    it 'should be able to add an employee' do
      employees_array = company.add_employee(shereef)
      expect(employees_array.include?(shereef)).to be true
    end
  end

  describe '#employees' do
    it 'should be able to add an employee' do
      expect(company.employees).to be_a (Array)
    end
  end
end
