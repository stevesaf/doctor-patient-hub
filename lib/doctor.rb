class Doctor
  attr_reader(:name, :id, :specialty_id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
    @specialty_id = attributes.fetch(:specialty_id)
  end

  define_method(:==) do |another_doctor|
    self.name().==(another_doctor.name()).&(self.id().==another_doctor.id()).&(self.specialty_id.==(another_doctor.specialty_id()))
  end
end
