class AddArticleCollection < Mongoid::Migration
  def self.up
    a = Core::ArticleForm.new
    a.content = 'In reasonable compliment favourable is connection dispatched in terminated. Do esteem object we called father excuse remove. So dear real on like more it. Laughing for two families addition expenses surprise the. If sincerity he to curiosity arranging. Learn taken terms be as. Scarcely mrs produced too removing new old.'
    a.title = 'In reasonable compliment'
    a.slug = 'in_reasonable_compliment'
    a.published = 'false'
    a.save

    a = Core::ArticleForm.new
    a.content = 'Written enquire painful ye to offices forming it. Then so does over sent dull on. Likewise offended humoured mrs fat trifling answered. On ye position greatest so desirous. So wound stood guest weeks no terms up ought. By so these am so rapid blush songs begin. Nor but mean time one over. '
    a.title = 'Written enquire painful'
    a.slug = 'written_enquire_painful'
    a.published = 'false'
    a.save

    a = Core::ArticleForm.new
    a.content = 'Cause dried no solid no an small so still widen. Ten weather evident smiling bed against she examine its. Rendered far opinions two yet moderate sex striking. Sufficient motionless compliment by stimulated assistance at. Convinced resolving extensive agreeable in it on as remainder. Cordially say affection met who propriety him. Are man she towards private weather pleased. In more part he lose need so want rank no. At bringing or he sensible pleasure. Prevent he parlors do waiting be females an message society.'
    a.title = 'Cause dried no solid'
    a.slug = 'cause_dried_no_solid'
    a.published = 'false'
    a.save

    a = Core::ArticleForm.new
    a.content = 'For who thoroughly her boy estimating conviction. Removed demands expense account in outward tedious do. Particular way thoroughly unaffected projection favourable mrs can projecting own. Thirty it matter enable become admire in giving. See resolved goodness felicity shy civility domestic had but. Drawings offended yet answered jennings perceive laughing six did far. '
    a.title = 'For who thoroughly her boy'
    a.slug = 'for_who_thoroughly_her_boy'
    a.published = 'false'
    a.save
  end

  def self.down
    Core::Article.find_by(:slug => 'in_reasonable_compliment')&.delete
    Core::Article.find_by(:slug => 'written_enquire_painful')&.delete
    Core::Article.find_by(:slug => 'cause_dried_no_solid')&.delete
    Core::Article.find_by(:slug => 'for_who_thoroughly_her_boy')&.delete
  end
end