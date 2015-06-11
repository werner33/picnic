class CalendarController < ApplicationController
    
    def calendar 
        @date = params[:date] ? Date.parse(params[:date]) : Date.today
        @picnics = Picnic.all 
        @picnics_by_date = @picnics.group_by(&:just_date)
    end 
    
end
