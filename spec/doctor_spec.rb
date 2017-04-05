require("rspec")
require("pg")
require("doctor")


DB = PG.connect({:dbname => 'doctor_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM tasks *;")
  end
end

describe (Doctor) do
  describe("#==") do
    it("is the same task if it has the same description") do
      task1 = Doctor.new({:name => "name", :id => nil, :specialty_id => nil })
      task2 = Task.new({:name => "name", :id => nil, :specialty_id => nil })
      expect(task1).to(eq(task2))
    end
  end
end
