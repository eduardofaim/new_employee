class NewEmployee
    include HTTParty
    base_uri "http://dummy.restapiexample.com/api/v1"
    #headers "Content-Type" => 'application/json'

    def initialize(body)
        @options = {:body => body}
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