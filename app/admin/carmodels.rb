ActiveAdmin.register Carmodel, :as => "Modelo" do
  index do
    column "Marca", :brand
    column "Modelo", :name
    default_actions
  end
end
