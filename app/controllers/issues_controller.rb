class IssuesController < ApplicationController

  def show
    render 'issues/new'
  end

  def create
    iss = Issue.new(account_params)
    iss.save
    render 'issues/thanks'
  end

  private
    def account_params
      params.permit(
        :issue_url,
        :issue_twitter,
        :feedback_email,
        :feedback_twitter
      )
    end
end
