class Card < ActiveRecord::Base
  belongs_to :deck
  attr_accessible :name, :val1, :val2, :val3, :val4, :val5, :val6, :val7, :val8, :val9, :deck_id
end
