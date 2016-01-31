class WelcomeController < ApplicationController

  def report
  end

  def submit_report
    render 'welcome/thanks'
  end

end
