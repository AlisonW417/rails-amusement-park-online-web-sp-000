class StaticController < ApplicationController
    skip_before_action :redirect_if_not_logged_in, only: [:home]

    def home
    end 
end 