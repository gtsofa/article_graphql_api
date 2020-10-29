module Types
  class QueryType < Types::BaseObject

    field :users, [Types::UserType], null: false do
      description 'Find all users'
    end

    field :user, Types::UserType, null: false do
      description 'Find a user by ID'
      argument :id, ID, required: true
    end

    field :articles, [Types::ArticleType], null: false do
      description 'Find all articles'
    end

    field :article, Types::ArticleType, null: false do
      description 'Find an article by ID'
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end

    def articles
      Article.all
    end

    def article(id:)
      Article.find(id)
    end

  end
end
