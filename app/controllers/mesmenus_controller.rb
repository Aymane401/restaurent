class MesmenusController < ApplicationController
    before_action :authenticate_user!

    def show
        @businesses =  current_user.businesses
        @user = current_user
        respond_to do |format|
            format.html{render 'mesmenus/show'}

        end 
    end

    def mesmenus
        @business = Business.find(params[:id])

        respond_to do |format|
            format.html{render 'mesmenus/mesmenus'}

        end 
    end
end
