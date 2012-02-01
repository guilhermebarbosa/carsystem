ActiveAdmin.register Proposal, :as => "Propostas" do
  index do
    column "Veículo", :car_id
    column "Nome", :name
    column "Email", :email
    column "Telefone", :telephone
    column "Financiar?", :finance
    column "Troca?", :exchange
    default_actions
  end
end