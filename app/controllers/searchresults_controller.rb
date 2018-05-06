class SearchresultsController < ApplicationController


def index
  @adds = Adss.all
  @motors = Motors.all
    
  end



def search
    @adds    = Add.ransack(name_cont: params[:q]).result(distinct: true)
    @adds    = Add.ransack(town_cont: params[:i]).result(distinct: true)

    @motors    = Motor.ransack(title_cont: params[:q]).result(distinct: true)
    @motors    = Motor.ransack(town_cont: params[:i]).result(distinct: true)
  
   # @motors = Motor.ransack(title_or_address_eq: params[:q]).result

    respond_to do |format|
      format.html {}
      format.json {
        @adds    = @adds.limit(5)
        @motors = @motors.limit(5)
      }
    end
end

  
  #Redirect to previous page after sign in

  



end
