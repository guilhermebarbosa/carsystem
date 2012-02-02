ActiveAdmin.register Car do
  before_filter [:load_carmodels]
  
  index do
    column "Marca", :brand
    column "Modelo", :carmodel
    column "Nome", :name
    column "Preço", :price
    column "Cor", :color
    column "Destaque?", :highlight
    default_actions
  end
  
  form :partial => "form"
  
  controller do
    def load_carmodels
      if !params[:id].blank?
        car = Car.find(:first, :conditions => ["id = #{params[:id]}"])
        @carmodels = Carmodel.find(:all, :conditions => ["brand_id = #{car.brand_id}"]).collect { |c| [c.name, c.id] }
      else
        @carmodels = Array.new
      end
    end
    
    def update_carmodels_select
      @carmodels = Carmodel.where(:brand_id=>params[:id]).order(:name)
      render :partial => "carmodel", :carmodels => @carmodels
    end
  end
end
