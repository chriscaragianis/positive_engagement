class IssuesController < ApplicationController

  def create
    render 'issues/thanks'
  end

  def show
    render 'issues/new'
  end
end
