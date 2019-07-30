class NewEmployee
    include HTTParty
    require_relative '../hooks/employee_hook'
    
    headers "Content-Type" => 'application/json'

    def initialize(body)
        @options = {:body => body.to_json}
        @options2 = {}
    end

    def postEmployee
        self.class.post("/create", @options)
    end

    def getEmployee (id)
        self.class.get("/employee/#{id}", @options2)
    end

    def deleteEmployee (id)
        self.class.delete("/delete/#{id}", @options2)
    end
end