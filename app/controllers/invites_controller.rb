class InvitesController < ApplicationController
  before_action :set_invite, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @invites = Invite.all
    respond_with(@invites)
  end

  def show
  @invite = Invite.find(params[:id])
    respond_with(@invite)
  end

  def new
    @invite = Invite.new
    respond_with(@invite)
  end

  def edit
  end

  def create
    @invite = Invite.new(invite_params)
    # @invite.picnic_id = @invite.picnic_id.to_i
    @invite.save
    # respond_with(@invite)
    redirect_to picnic_path(@invite.picnic_id)
  end

  def update
    @invite.update(invite_params)
    respond_with(@invite)
  end

  def destroy
    @invite.destroy
    respond_with(@invite)
  end

  private
    def set_invite
      @invite = Invite.find(params[:id])
    end

    def invite_params
      params.require(:invite).permit(:picnic_id, :user_id)
    end
end
