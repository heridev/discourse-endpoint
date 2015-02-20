module DiscourseEndpoint
  class UsersController < ApplicationController

    def current
      if current_user.present?
        retrieve_user_info
      else
        render nothing: true, status: 404
      end
    end

    private
      def retrieve_user_info
        oauth_info = Oauth2UserInfo.find_by(user_id: current_user.id)
        response = RestClient.get(
          endpoint_store_url,
          {
            params: {
              user_uid: oauth_info.try(:uid),
              user_token: request.env["omniauth.auth"]
            }
          }
        )
        response
      end

      def endpoint_store_url
        "#{SiteSetting.endpoint_url}/api/users/retrieve_user_info.json"
      end
  end
end
