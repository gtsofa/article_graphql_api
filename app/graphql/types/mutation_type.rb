module Types
  class MutationType < Types::BaseObject
    field :create_article, mutation: Mutations::Articles::CreateArticle
    field :destroy_article, mutation: Mutations::Articles::DestroyArticle
    field :update_article, mutation: Mutations::Articles::UpdateArticle
  end
end
