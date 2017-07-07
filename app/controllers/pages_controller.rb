class PagesController < ApplicationController
    #Get request for / home page
    def home
      @free_plan = Plan.find(1)
      @paid_plan = Plan.find(2)
    end
    
    def about 
    end
end
