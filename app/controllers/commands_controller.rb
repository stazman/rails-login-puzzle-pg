class CommandsController < ApplicationController

  def index
    @command_entries = Command.all
  end
  
  def new
    @command_entry = Command.new
  end

  def create
    # @command_entry = Command.new

    # @command_entry = Command.new(params[:command_entry])
    @command_entry = Command.create(command_params)
    
    # raise params.inspect

    if params[:command][:command_entry] == "command pass"
      redirect_to command_path(@command_entry)
      else
        flash[:alert] = "UNRECOGNIZED COMMAND PASSWORD"
        redirect_to new_command_path
      end
  end

  def show
    @command_entry = Command.find(params[:id])
  end

  private

  def command_params
    params.permit(:command_entry)
  end

end
