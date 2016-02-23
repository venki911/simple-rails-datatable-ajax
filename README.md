# simple-rails-datatable-ajax
A simple demo on how to integrate  [Datatable With Ajax Source](https://www.datatables.net/examples/data_sources/ajax.html) into rails

####How to run
1. git clone git@github.com:nlt2390/simple-rails-datatable-ajax.git
2. Edit your config/database.yml
3. bundle install
4. rake db:create
5. rake db:migrate
6. rake db:seed
7. rails s
8. Go to [http://localhost:3000](http://localhost:3000)

#### Importants files
1. [apps/controller/user_controller.rb](https://github.com/nlt2390/simple-rails-datatable-ajax/blob/master/app/controllers/users_controller.rb)
2. [apps/views/users/index.html.erb](https://github.com/nlt2390/simple-rails-datatable-ajax/blob/master/app/views/users/index.html.erb)
3. [apps/services/model_search.rb](https://github.com/nlt2390/simple-rails-datatable-ajax/blob/master/app/services/model_search.rb)
4. [apps/services/search_user.rb](https://github.com/nlt2390/simple-rails-datatable-ajax/blob/master/app/services/search_users.rb)
