
class Core::ArticleForm
    include ActiveModel::Model

    attr_accessor(:id, :title, :content, :slug, :published)

    # Validations
    validates :title, presence: true
    validates :content, presence: true
    validates :slug, presence: true
    validates :published, presence: true
    
    def save
        if valid?
            article = Core::Article.new(title: title, content: content, slug: slug, published: published)
            article.save
            true
        else
            false
        end
    end

    def update
        if valid?
            article = Core::Article.find(id)
            article.update_attributes!(title: title, content: content, slug: slug, published: published)
            true
        else
            false
        end
    end
end
