Given("API Address to Maintain Employee Registration") do
    @uri_base = "http://dummy.restapiexample.com/api/v1/create"
  end
  
  When("making a request to register an employee") do
    @response = HTTParty.post(@uri_base, :body => {"name":"faim test 4","salary":"123","age":"35"}.to_json, :headers => {"Content-Type" => 'application/json'})
  end
  
  Then("the API will return the Startup registration data by response code {int}") do |int|
    puts "Response Body: #{@response.body}"
    puts "Response Code: #{@response.code}"
  end