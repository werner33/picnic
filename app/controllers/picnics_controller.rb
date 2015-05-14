class PicnicsController < ApplicationController
  before_action :set_picnic, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @picnics = Picnic.all
    respond_with(@picnics)
  end

  def show
    respond_with(@picnic)
  end

  def new
    @picnic = Picnic.new
    respond_with(@picnic)
  end

  def edit
  end

  def create
    @picnic = Picnic.new(picnic_params)
    @picnic.save
    respond_with(@picnic)
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
      params[:picnic]
    end
end
