ActiveAdmin::Dashboards.build do
  
  section "Veiculos em Destaque" do
    table_for Car.where("highlight is true").order("updated_at desc").limit(4) do
      column "Marca", :brand
      column "Modelo", :carmodel
      column "Nome", :name
      column "Preço", :price
      column "Cor", :color
      column "Data", :updated_at
    end
    strong { link_to "Visualizar Todos Veiculos", admin_cars_path }
  end
end