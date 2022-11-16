# Ayman Hamdi last edited : 10/11/2022
class AccueilController < ApplicationController
    before_action :authenticate_user!

    def show
        @businesses =  current_user.businesses
        @user = current_user
        respond_to do |format|
            format.html{render 'accueil/show'}

        end 
    end
end
