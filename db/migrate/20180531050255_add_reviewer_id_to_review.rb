class AddReviewerIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :reviewer_id, :integer
  end
end
