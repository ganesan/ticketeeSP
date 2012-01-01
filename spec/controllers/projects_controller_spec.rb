require 'spec_helper'

describe ProjectsController do
  it "displays an error for missing project" do
    get :show, :id => "not-there"
    response.should redirect_to(projects_path)
    message = "The project you were looking for could not be found."
    flash[:alert].should eql(message)
  end
end
