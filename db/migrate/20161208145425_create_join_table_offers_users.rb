class CreateJoinTableOffersUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :offers, :users do |t|
      # t.index [:offer_id, :user_id]
      # t.index [:user_id, :offer_id]
    end
  end
end
