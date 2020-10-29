# README
## This is a simple graphql crud api with Ruby on Rails 

#### Read Data Endpoints
### /users
```
{
  users{
    name
    email
  }
}
```

### /user
```
{
  user(id: 2){
    name
    email
  }
}
```
### /articles
```
{
  articles{
    id
    title
    description
  }
}
```

### /article
```
{
  article(id: 4){
    id
    title
    description
  }
}
```

#### Mutations Endpoints
### /createArticle

```
mutation{
  createArticle(input: 
    {
      userId: 2
      title: "Edit Article title"
      description: "Edit Description Article"
    }
  )
  {
    id
    title
    description
  }
}
```

### /EditArticle

```
mutation{
  updateArticle(input: 
    {
      id: 2
      title: "Edit Article title"
      description: "Edit Description Article"
    }
  )
  {
    id
    title
    description
  }
}
```
### /DeleteArticle

```
mutation{
  destroyArticle(id: 7
  )
  {
    id
    title
    description
  }
}
```
