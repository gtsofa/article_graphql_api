module Mutations
    module Articles
        class CreateArticle < ::Mutations::BaseMutation
        argument :title, String, required: true
        argument :user_id, Integer, required: true
        argument :description, String, required: true

        type Types::ArticleType

        def resolve(user_id:, **attributes)
            User.find(user_id).articles.create!(attributes)
        end
        end
    end
  end