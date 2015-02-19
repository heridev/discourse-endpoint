module DiscourseEndpoint
  class UsersController < ApplicationController
    def current
      if current_user.present?
        render_serialized(current_user, CurrentUserSerializer)
      else
        render nothing: true, status: 404
      end
    end
  end
end
