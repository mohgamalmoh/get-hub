require 'uri'
    class Github < VersionControl

      def get_popular (http_client , params)

        parameters = {}
        parameters[:q] =  'created:>'+ ENV['GITHUB_REPOS_CREATED_FROM'] + (params[:lang].nil? ? '' : (' language:'+params[:lang]))
        parameters[:sort] = 'stars'
        parameters[:order] = 'desc'
        parameters[:page] = 1
        parameters[:per_page] = params[:top_count]

        http_client.get('https://api.github.com','search/repositories',parameters)
      end

    end

