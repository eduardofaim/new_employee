Before '@employee' do
    @name = Faker::Name.name
    @salary = Faker::Number.number(digits: 4)
    @age = Faker::Number.decimal_part(digits: 2)

    @body = {
        "name": @name,
        "salary": @salary,
        "age": @age
}.to_json

    @employee = NewEmployee.new(@body)
end