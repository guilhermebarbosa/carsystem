ActiveAdmin.register Contact, :as => "Contato" do
  index do
    column "Nome", :name
    column "Email", :email
    column "Telefone", :telephone
    column "Assunto", :subject
    default_actions
  end
end