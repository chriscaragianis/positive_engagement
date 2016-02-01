Given(/^a community member visits the site$/) do
  visit '/'
end

Given(/^clicks (.*)$/) do |link|
  click_link(link)
end

Then(/^the report page is displayed$/) do
  expect(page).to have_content("We want to help")
end

Given(/^a community member at the report page$/) do
  Issue.delete_all
  visit '/issues/new'
end

Then(/^the issue report form is displayed$/) do
  expect(page).to have_field(:issue_url)
  expect(page).to have_field(:issue_twitter)
  expect(page).to have_field(:feedback_email)
  expect(page).to have_field(:feedback_twitter)
end

Given(/^the issue report form is completed$/) do
  fill_in :issue_url, with: "www.twitter.com"
  fill_in :issue_twitter, with: "@brohammersdad"
  fill_in :feedback_email, with: "me@email.com"
  fill_in :feedback_twitter, with: "@brohammersdad"
end

Given(/^a community member clicks submit$/) do
  click_button :submit
end

Then(/^the issue is created and saved$/) do
  expect(Issue.last.feedback_email).to eq("me@email.com")
end

Then(/^the issue is reported to a helper$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^a helper submits a resolved issue$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^anonymity has not been requested$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^a mail is generated containing the resolution$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
