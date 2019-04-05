
require 'alchemy/solidus/use_solidus_layout'
# require 'alchemy/solidus/alchemy_in_solidus'

Alchemy.user_class_name = 'Spree::User'
Alchemy.current_user_method = :spree_current_user
Alchemy.login_path = 'login'
Alchemy.logout_path = 'logout'
