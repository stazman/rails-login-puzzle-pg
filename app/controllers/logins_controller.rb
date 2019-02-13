class LoginsController < ApplicationController
 
  def index
    @login_entries = Login.all
  end
  
  def new
    @login_entry = Login.new
  end

  def create
    @login_entry = Login.new(login_params)
    if params[:login][:usr] == "puzzle user" && params[:login][:pword] == "puzzle pass"
        @login_entry.save
        redirect_to login_path(@login_entry)
        @login_entry.delete
      else
        @login_entry.delete
        flash[:alert] = "USERNAME/PASSWORD INCORRECT"
        redirect_to "/"
      end
  end
    
    # raise params.inspect

  def show
    @login_entry = Login.find(params[:id])
  end

  private

  def login_params
    params.permit(:usr, :pword)
  end

end
