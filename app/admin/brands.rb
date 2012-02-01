ActiveAdmin.register Brand, :as => "Marca" do
  index do
    column "Marca", :name
    default_actions
  end
end