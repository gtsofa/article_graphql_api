module Mutations
    module Articles
        class UpdateArticle < ::Mutations::BaseMutation
            argument :id, Integer, required: true
            argument :title, String, required: true
            argument :user_id, Integer, required: false #true
            argument :description, String, required: true

            type Types::ArticleType

            def resolve(id:, **attributes)
                Article.find(id).tap do |article|
                    article.update!(attributes)
                end
            end
        end
    end
  end