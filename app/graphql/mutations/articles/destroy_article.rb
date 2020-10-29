module Mutations
    module Articles
        class DestroyArticle < ::Mutations::BaseMutation
            argument :id, Integer, required: true
            

            type Types::ArticleType

            def resolve(id:)
                Article.find(id).destroy
            end
        end
    end
  end