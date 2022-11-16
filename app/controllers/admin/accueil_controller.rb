# Ayman Hamdi last edited : 10/11/2022
class Admin::AccueilController < AdminController


    def show
        @businesses = Business.order('name DESC')
        respond_to do |format|
            format.html{render 'admin/show'}
        end 
    end

end
