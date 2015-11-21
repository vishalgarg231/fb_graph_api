module FbGraphApi

  # This module provides API requests to get facebook profile details
  # and profile picture

  class Profile

    attr_accessor :id

    # Intialize connection
    # Reverses the contents of a String or IO object.
    # @param token [String]
    def initialize(token = nil)
      client = FbGraphApi::Client.new(token)
      @connection = client.connection
    end	

    # Retrieve profile details
    # @return Object of facebook profile details
    def info
    	response = @connection.get 'me'
    	self.id =  response.body["id"].to_i
    	OpenStruct.new(response.body)
    end


    # Retrieve facebook picture 
    # @param size [String]
    # @return Object of facebook picture
    def picture(size = 'large')
      info unless id
    	response = @connection.get "#{@id}/picture", {type: size}
    	OpenStruct.new(response.env.response_headers)
    end

  end
end
