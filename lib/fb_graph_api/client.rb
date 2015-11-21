module FbGraphApi
	class Client
	  attr_accessor :token

	  def initialize(token)
	    @address       =  'https://graph.facebook.com'
	    @acess_token   =   token
	  end

	  def connection
	    Faraday.new(url: @address) do |conn|
	      conn.authorization 'Bearer', @acess_token
	      conn.request  :json
	      conn.response :json,  :content_type => /\bjson$/
	      conn.adapter  Faraday.default_adapter
	    end
	  end
	end
end