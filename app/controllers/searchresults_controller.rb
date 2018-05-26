class SearchresultsController < ApplicationController


def index
  @adds = Adss.all
  @motors = Motors.all
    
  end



def search

@adds = Add.ransack(name_cont: params[:q], town_cont: params[:q1]).result(distinct: true)
@motors = Motor.ransack(title_cont: params[:q], town_cont: params[:q1]).result(distinct: true)




    respond_to do |format|
      format.html {}
      format.json {
        @adds    = @adds.limit(5)
        @motors = @motors.limit(5)
      }
    end
end


  



end
