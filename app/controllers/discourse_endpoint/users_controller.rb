module DiscourseEndpoint
  class UsersController < ApplicationController
    def test
      test_json = {
        message: 'hello'
      }
      render json: test_json, status: :unprocessable_entity
    end
  end
end
