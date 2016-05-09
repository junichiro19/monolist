module RankingHelper

    def rank(other_item_id)
        @item = Item.find(other_item_id)
    end
    
end