require 'net/http'

require 'ypool/version'

class Ypool

  HOST = ""

  URLS = {
    global_stats: "/global_stats",
  }

  class Connection
    attr_reader :api_key

    def initialize(api_key)
      @api_key = api_key
      # todo: integrate net_http with keepalive
    end   
   
    def get(url, params={})
      uri = URI URLS[url]
      uri.query = URI.encode_www_form params
      resp = Net::HTTP.get url
res = Net::HTTP.get_response(uri)
puts res.body if res.is_a?(Net::HTTPSuccess)
      resp.
    end 
  end

  def initialize(api_key=nil)
    @connection = Connection.new @api_key
  end
 
  def global_stats
    @connection.get :global_stats
  end
end
