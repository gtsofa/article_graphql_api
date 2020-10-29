module Types
    class UserType < Types::BaseObject
      field :articles, [Types::ArticleType], null: true

    #   user fields
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    end
  end