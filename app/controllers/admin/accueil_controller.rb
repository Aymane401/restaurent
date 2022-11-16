# Ayman Hamdi last edited : 10/11/2022
class Admin::AccueilController < AdminController

    before_action  :authenticate_user!, :must_be_admin

    def must_be_admin
        unless current_user.is_admin
            redirect_to '/', notice: "Vous n'êtes pas Admin =( peut-être un jour ?"
        end
    end

    def show
        @businesses = Business.order('name DESC')
        respond_to do |format|
            format.html{render 'admin/show'}
        end 
    end

end
