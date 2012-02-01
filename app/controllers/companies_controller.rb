class CompaniesController < InheritedResources::Base
  before_filter [:load_search], :only=>[:index]
  
  def index
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
