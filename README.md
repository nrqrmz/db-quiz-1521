## What’s a relational database?
**Es un conjunto de tablas relacionas entre si a traves de primary keys y foreign keys**

## What are the different “table relationships” you know?
- 1:1
- 1:N
- N:1
- N:N
- Tablas independients

## Draw the database schema of the following e-library service.
### An author, defined by their name, has several books. A book, defined by its title and publishing year, has one author only.
**https://kitt.lewagon.com/db/121018**

## Improve your e-library DB schema by drawing relevant tables and relationships.
### A user, defined by their email, can read several books. A book (e-book!!) can be read by several users. We also want to keep track of reading dates.
**https://kitt.lewagon.com/db/121018**

## What’s the language to make queries to a database?
**SQL (Structured Query Language)**

## What’s the SQL query to get books written before 1985?
```SQL
SELECT * FROM books
WHERE year < 1985
```

## What’s the SQL query to get the 3 most recent books written by Jules Verne?
```SQL
SELECT * FROM books
JOIN authors ON authors.id = books.author_id
WHERE name = 'Jules Verne'
ORDER BY year DESC
LIMIT 3
```

## What’s the purpose of Active Record?
**Es un ORM (Object Relational Mapping) donde las variables de nuestro objeto son las columnas de la tabla en la base de datos. Contiene metodos predefinidos para interactuar con la base de datos**

## What’s a migration?
**Son cambios en la base de datos (crear, destruir, modificar tablas y / columnas). Afecta la estructura pero no el contenido**

## How do you run a migration?
```
rake db:migrate
```

## Complete the following migrations to create your e-library database.
**Ver la migracion de create_authors**

## Complete the following code using the relevant Active Record methods.
1. Add your favorite author to the DB
```ruby
Author.create(name: 'Yukihiro Matsumoto')
```
2. Get all authors
```ruby
Author.all
```
3. Get author with id=8
```ruby
Author.find(8)
```
4. Get author with name="Jules Verne", store it in a variable: jules
```ruby
jules = Author.find_by(name: 'Jules Verne')
```
5. Get Jules Verne's books
```ruby
jules.books
```
6. Create a new book "20000 Leagues under the Seas". Store it in a variable: twenty_thousand
```ruby
twenty_thousand = Book.new(title: '20000 Leagues under the Seas', year: 1870)
```
7. Add Jules Verne as this book's author
```ruby
twenty_thousand.author = jules
```
8. Now save this book in the DB!
```ruby
twenty_thousand.save
```
## Can we save an object in the DB if its validations do not pass?
**No se persiste a la DB. #save! / #create! para poder visualizar el error de validación**
