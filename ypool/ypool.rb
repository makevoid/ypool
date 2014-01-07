require_relative 'version'

class Ypool

  HOST = ""

  URLS = {
    global_stats: "/...",
  }

  class Connection
    attr_reader :api_key

    def initialize(api_key)
      @api_key = api_key
      # todo: integrate net_http with keepalive
    end   
  end

  def initialize(api_key=nil)
    @connection = Connection.new @api_key
  end
 
  def global_stats
    @connection.get :global_stats
  end
end
