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

        must_be_owner_of_busniness
        @business = Business.find(params[:id])

        respond_to do |format|
            format.html{render 'mesmenus/mesmenus'}

        end 
    end

    def must_be_owner_of_busniness
        unless Business.find(params[:id]) == current_user.businesses.find(params[:id])
            redirect_to '/', notice: "Vous n'êtes pas Admin =( peut-être un jour ?"
        end
    end
end
 

   