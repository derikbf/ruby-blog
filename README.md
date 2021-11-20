# Blogstrap

Building a blog using Bootstrap 5 with Ruby on Rails 6 in MVC pattern.

Obs: this blog was focused on studies in Ruby on Rails, mainly on the backend, with no effort on the frontend.

This repository is part of the [Curso Ruby on Rails 6 MVC](https://www.youtube.com/watch?v=rCwMlbpC7dU) on YouTube. Professor Paulo Eduardo Melo.

<h3>👨‍💻 Technologies Used</h3>

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      2.7.1
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      6.1.4.1
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td> PostgreSQL - Gem 1.1</td>
  </tr>
    <tr>
    <td>Bootstrap</td>
    <td>
      5
    </td>
  </tr>
</table>

## Initial settings to run the project

```bash
# clone the project
git clone https://github.com/derikbf/ruby-blog

# enter the cloned directory
cd ruby-blog

# install Ruby on Rails dependencies
bundle install

# install Node dependencies
yarn install

# create the development and test databases
rails db:create

# create the tables
rails db:migrate

# create Posts Fakes
rails db:seed

# run the project
rails s
```

Open the browser at the address `http://localhost:3000`
Open the browser at the address [https://ruby-blogstrap.herokuapp.com/](https://ruby-blogstrap.herokuapp.com/)
## Configuration for Production

```bash
# delete the config/credentials.yml.enc file
rm config/credentials.yml.enc

# run the command to create credentials and master key (replace 'code' if you don't use VS Code)
EDITOR="code --wait" bin/rails credentials:edit
```

Add the information below in the [credentials](https://guides.rubyonrails.org/security.html#custom-credentials) to configure the email used by the Devise
gem (replace with the values ​​you want):

```yml
# ... your content above

gmail:
  mailer_sender: 'Sender <your@email.com>'
  user_name: your@email.com
  password: your_password

exception_recipients: exceptions@example.com
```

Save and close the `config/credentials.yml.enc` file.

If you want to use another email provider, change it in the file
`config/environments/production.rb`.

To configure [Exception Notification](https://github.com/smartinez87/exception_notification), change it in the file
`config/initializers/exception_notification.rb`.

Open the browser at the address [https://ruby-blog.herokuapp.com](https://ruby-blog.herokuapp.com)

## Developed features:
- System admin
- User registration
- Authentication (gem devise)
- Authorization system (gem pundit)
- Post Creation
- Comment Creation
- Category creation and filtering
- Paging (gem kaminari)
- Archives (monthly display with number of posts)
- Filter by period
- Best practices (avoiding N+1 queries)
- I18n
<br/><br/>

<!-- GIF -->
<p align="center"><img src="./app/assets/images/ruby-blog.gif" title="Ruby - Blog"></p>
