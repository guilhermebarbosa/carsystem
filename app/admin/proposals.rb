ActiveAdmin.register Proposal, :as => "Propostas" do
  actions :index, :show
  
  index do
    column "Veículo", :car_id
    column "Nome", :name
    column "Email", :email
    column "Telefone", :telephone
    column "Financiar?", :finance
    column "Troca?", :exchange
    column "" do |proposal|
      link_to "Visualizar", admin_propostum_path(proposal)
    end
  end
end