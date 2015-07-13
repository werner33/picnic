class StaticPagesController < ApplicationController
  def home
    @picnics = Picnic.all
    # needs to be fixed to account for time, not just date
    @picnic = Picnic.where('date >= ?', Date.today).order(:date).first || nil
    
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
