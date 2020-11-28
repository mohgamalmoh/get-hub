module Repositories
  class GithubController < ApplicationController
    def get_popular

      data = JSON.parse Github.new.get_popular(FaradayClient.new , {top_count: top_count , lang: params['lang']})
      render self.get_response(200, 'success', true, data) and return
    end

    private
    def top_count
      (['10','50','100'].include? params['top_count']) ? params['top_count'] : 10
    end


  end

end

