Given("API address to maintain employee registration") do
  $uri_base = "http://dummy.restapiexample.com/api/v1/create"
end
  
When("making a request to register an employee") do
  #$response = HTTParty.post($uri_base, :body => {"name":"asdf", "salary":"1000","age":"20"})
  $response = HTTParty.post($uri_base,
     :body => {
       "name":"Test name",
       "salary":"1000",
       "age":"20"}.to_json,
       :headers => {"Content-Type" => "application/json" })
  #$response = @employee.postEmployee
end
  
Then("the API will return the Startup registration data by response code {int}") do |int|
  expect($response.code).to eq(int)
  puts "Status Code: #{$response.code}"
  expect($response.message).to eq("OK")
  puts "Response Message: #{$response.message}"

  puts "ID    : #{$response["id"]}"
  puts "Name  : #{$response["name"]}"
  puts "Salary: #{$response["salary"]}"
  puts "Age   : #{$response["age"]}"
  puts "Response Body: #{$response.body}"
    
  $id = $response["id"]
end
  
When("make a request by passing the employee id") do
  $get = @employee.getEmployee($id)
end
  
Then("the API will return the corresponding Employee data by response code {int}") do |int|
  expect($get.code).to eq(int)
  expect($get.message).to eq("OK")
  expect($get["id"]).to eq($response["id"])
  puts "Response Message: #{$get.message}"

  puts "ID    : #{$get["id"]}"
  puts "Name  : #{$get["name"]}"
  puts "Salary: #{$get["salary"]}"
  puts "Age   : #{$get["age"]}"
  puts "Status Code: #{$get.code}"
end
  
When("make a request to delete an employee") do
  $delete = @employee.deleteEmployee($get["id"])
end
  
Then("the API should return the delete message by response code {int}") do |int|
  expect($delete.code).to eq(int)
  expect($delete.message).to eq("OK")
  puts "Delete Message: #{$delete.message}"

  puts "ID    : #{$delete["id"]}"
  puts "Name  : #{$delete["name"]}"
  puts "Salary: #{$delete["salary"]}"
  puts "Age   : #{$delete["age"]}"
  puts "Status Code: #{$delete.code}"
end