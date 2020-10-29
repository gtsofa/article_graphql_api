module Types
    class ArticleType < Types::BaseObject
    #   user
    field :user, Types::UserType, null: false
    # field :email, String, null: false

    # article field 
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    end
  end