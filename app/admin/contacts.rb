ActiveAdmin.register Contact, :as => "Contato" do
  actions :index, :show 
  
  index do
    column "Nome", :name
    column "Email", :email
    column "Telefone", :telephone
    column "Assunto", :subject
    column "" do |contact|
      link_to "Visualizar", admin_contato_path(contact)
    end
  end
end