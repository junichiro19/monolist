class RankingController < ApplicationController
    
    
    def have
        have_ranking = Ownership.where(type: 'Have')
                                 .group(:item_id)
                                 .order('count_item_id desc')
                                 .limit(10)
                                 .count(:item_id)
        @item = Item.find([have_ranking.keys])
    end
    
    def want
        want_ranking = Ownership.where(type: 'Want')
                                 .group(:item_id)
                                 .order('count_item_id desc')
                                 .limit(10)
                                 .count(:item_id)
        @item = Item.find([want_ranking.keys])
    end
    
end
