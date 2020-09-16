class HomeController < ApplicationController
  def index
  @complaints = Complaint.all
  end

  def search
    @complaints = Complaint.search(params[:search], params[:search_company])
  end 
end
