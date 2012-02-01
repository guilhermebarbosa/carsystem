class CarsController < ApplicationController
  before_filter [:load_search], :only=>[:index, :show]
  before_filter [:load_carmodels], :only=>[:index]
  
  def index
    @cars = @search.all
  end
  
  def show
    @car = Car.find(params[:id])
    
    @proposal = Proposal.new
    @car_id = params[:id]

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @car }
    end
  end
  
  def update_carmodels_select
    @carmodels = Carmodel.where(:brand_id=>params[:id]).order(:name)
    render :partial => "carmodel", :carmodels => @carmodels
  end
  
  def load_carmodels
    if !params[:search].blank?
      if !params[:search][:brand_id_eq].blank?
        @carmodels = Carmodel.find(:all,:conditions => ["brand_id = #{params[:search][:brand_id_eq]}"]).collect { |c| [c.name, c.id] }
      end
    end
  end
  
  def load_search
    @search = Car.search(params[:search])
    @carmodels = Array.new
  end
end