module Types
  class MutationType < Types::BaseObject
    field :create_article, mutation: Mutations::Articles::CreateArticle
  end
end
