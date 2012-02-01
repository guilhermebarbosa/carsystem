class ProposalsController < ApplicationController
  def create
    @proposal = Proposal.new(params[:proposal])

    respond_to do |format|
      if @proposal.save
        ContactMail.proposal_send(@proposal).deliver
        format.html { redirect_to(root_path, :notice => 'Proposta realizada com sucesso!') }
      else
        format.html { render :action => "new" }
      end
    end
  end
end