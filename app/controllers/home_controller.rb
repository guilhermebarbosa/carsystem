class HomeController < ApplicationController
  before_filter [:load_search], :only=>[:index]
  
  def index
    @operation = Operation.first
  
    @company = Company.first
    
    @highlights = Car.where("highlight is true").order("updated_at desc").limit(4)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contacts }
    end
  end
  
  def load_search
    @search = Car.search(params[:search])
    @carmodels = Array.new
  end
end