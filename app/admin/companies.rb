ActiveAdmin.register Company, :as => "Empresa" do
  index do
    column "Descrição", :description
    default_actions
  end
end