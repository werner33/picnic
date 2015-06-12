class StaticPagesController < ApplicationController
  def home
    @picnics = Picnic.all
    @picnic = Picnic.where('date >= ?', Date.today).order(:date).first
    # respond_with(@picnics)
  end

  def about
  end

  def contact
  end

  def why_picnics
  end

  def what_to_bring
  end
end
