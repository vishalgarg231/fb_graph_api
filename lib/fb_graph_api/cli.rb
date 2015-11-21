require 'thor'

module FbGraphApi
  class CLI < Thor
    desc 'version', 'print version'
    def version
      puts "Version: #{FbGraphApi::VERSION}"
    end
  end
end
