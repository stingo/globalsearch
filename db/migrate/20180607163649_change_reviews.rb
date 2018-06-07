class ChangeReviews < ActiveRecord::Migration[5.2]
  def change
    change_column_default :reviews, :rating, from: nil, to: 0
  end
end
