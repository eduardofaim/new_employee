Before '@employee' do

    @name = Faker::Name.name
    @salary = Faker::Number.within(1000..2000)
    @age = Faker::Number.within(20..80)

    @body = {
        "name": @name,
        "salary": @salary,
        "age": @age
    }.to_json

    @employee = NewEmployee.new(@body)
end