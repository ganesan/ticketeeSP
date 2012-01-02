class TicketsController < ApplicationController
  before_filter :find_project
  before_filter :find_ticket, :only => [:show,
                                        :edit,
                                        :update,
                                        :destroy]


  def new
    @ticket = @project.tickets.build
  end
  
  def create
    @ticket = @project.tickets.build(params[:ticket])
    if @ticket.save
      flash[:notice] = "Ticket has been created."
      #/project/4/tickets/1
      #puts project_ticket_path(@project, @ticket)
      redirect_to [@project, @ticket]
    else
      flash[:alert] = "Ticket has not been created."
      render :action => "new"
    end
  end
  
  # Where does params[:project_id] come from? 
  # It’s made available through the wonders of 
  # Rails’s routing, just as params[:id] was. 
  # It’s called project_id instead of id because you could (and later will) have a route that you want to pass through an ID for a ticket as well, and that would be params[:id]. Now how about that tickets method on your @project object? Let’s make sure it doesn’t already exist by running bin/ cucumber features/creating_tickets.feature:

  private
    def find_project
      @project = Project.find(params[:project_id])
    end
    
    def find_ticket
      @ticket = @project.tickets.find(params[:id])
    end
end
