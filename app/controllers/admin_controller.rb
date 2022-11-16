# Ayman Hamdi last edited : 10/11/2022
class AdminController < ApplicationController

    before_action  :authenticate_user!, :must_be_admin

private 
    def must_be_admin
        unless current_user.is_admin
            redirect_to '/', notice: "Vous n'êtes pas Admin =( peut-être un jour ?"
        end
    end
end
