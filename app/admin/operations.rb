ActiveAdmin.register Operation, :as => "horario"  do
  index do
    column "Descrição", :description
    default_actions
  end
end
