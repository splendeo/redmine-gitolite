class GitoliteController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => :index

  def index
  end
  
  def update
  end

  def find_project
	@project = Project.find(params[:id])
  end
end
