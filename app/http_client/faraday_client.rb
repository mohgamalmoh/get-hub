class FaradayClient < HttpClient

    def get (base,segment,params)
      connection_obj = Faraday.new(url: base,params: params,headers: { 'Content-Type' => 'application/json' })
      connection_obj.get(segment).body
    end
  end



