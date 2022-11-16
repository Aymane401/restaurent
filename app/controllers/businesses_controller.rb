# Ayman Hamdi last edited : 10/11/2022
class BusinessesController < ApplicationController
    before_action :authenticate_user!
    def show
        @business = Business.find(params[:id])

        respond_to do |format|
            format.html{render 'businesses/show'}
            format.json { render 'businesses/show' }
            format.xml{render 'businesses/show'}
        end 
    end

end
