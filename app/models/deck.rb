class Deck < ActiveRecord::Base
  attr_accessible :attr1, :attr2, :attr3, :attr4, :attr5, :attr6, :attr7, :attr8, :attr9, :name, :num_attr
  
  def self.decks_map
    map = []
    Deck.all.each do |deck|
      map << ["#{deck.name}", deck.id]
    end
    map
    
  end
end
