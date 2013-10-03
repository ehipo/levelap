namespace :levelap do
  desc 'Install'
  task(:load_default_admin => :environment) do
    admin = User.find_or_create_by_email(:email => 'admin@levelap.com', :password => 'levelap', :password_confirmation => 'levelap' )
    admin.save!
    p "User email  is 'admin@levelap.com' and password is 'levelap'"
  end
end