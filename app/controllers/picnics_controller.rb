class PicnicsController < ApplicationController
  before_action :set_picnic, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :ensure_admin!, :except => [:show, :index]

  respond_to :html

  def index
    @picnics = Picnic.all
    future_picnics = Picnic.future_picnics
    @next_picnic = future_picnics.first
    @future_picnics = future_picnics[1..100]
    @past_picnics = Picnic.past_picnics.first(4)
    respond_with(@picnics)
  end

  def show
    @picnic = Picnic.find(params[:id])
    @invites = @picnic.invites.eager_load(:user)
    @invite = current_user.invites.build(picnic_id: @picnic.id) if user_signed_in?
    @users = @picnic.users
  end

  def new
    @picnic = current_user.hosted_picnics.new
    respond_with(@picnic)
  end

  def edit
  end

  def create
    @picnic = current_user.hosted_picnics.build(picnic_params)
    if @picnic.save
      redirect_to @picnic
    else
      format.html { render :new }
    end 
  end

  def update
    @picnic.update(picnic_params)
    respond_with(@picnic)
  end

  def destroy
    @picnic.destroy
    respond_with(@picnic)
  end

  private
    def set_picnic
      @picnic = Picnic.find(params[:id])
    end
    
    def picnic_params
      params.require(:picnic).permit(:name, :date, :description, :image)
    end

    
    
end
