class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :issue_url
      t.string :issue_twitter
      t.string :feedback_email
      t.string :feedback_twitter

      t.timestamps null: false
    end
  end
end
