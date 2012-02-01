class ContactMail < ActionMailer::Base
  default :from => "guilherme.barbosa90@gmail.com"
  
  def contact_send(contact)
    @contact = contact
    attachments["logo.gif"] = File.read("#{Rails.root}/public/images/logo.gif")
    mail(:to => "#{contact.name} <#{contact.email}>", :subject => "Fale Conosco - #{contact.subject}")
  end
  
  def proposal_send(proposal)
    @proposal = proposal
    attachments["logo.gif"] = File.read("#{Rails.root}/public/images/logo.gif")
    mail(:to => "#{proposal.name} <#{proposal.email}>", :subject => "Nova Proposta")
  end
end