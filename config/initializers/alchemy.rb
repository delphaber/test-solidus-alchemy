require 'alchemy/solidus/use_solidus_layout'
require 'alchemy/solidus/alchemy_in_solidus'

Alchemy.user_class_name = 'Spree::User'
Alchemy.current_user_method = :spree_current_user
Alchemy.login_path = 'login'
Alchemy.logout_path = 'logout'

Alchemy::Modules.register_module({
  engine_name: 'spree',
  name: 'solidus',
  navigation: {
    controller: 'spree/admin/orders',
    action: 'index',
    name: 'Store',
    image: 'alchemy/solidus/alchemy_module_icon.png',
    data: { turbolinks: false },
    sub_navigation: [
      {
        controller: 'spree/admin/orders',
        action: 'index',
        name: 'Orders'
      },
      {
        controller: 'spree/admin/products',
        action: 'index',
        name: 'Products'
      },
      {
        controller: 'spree/admin/promotions',
        action: 'index',
        name: 'Promotions'
      },
      {
        controller: 'spree/admin/stock_items',
        action: 'index',
        name: 'Stock'
      },
      {
        controller: 'spree/admin/users',
        action: 'index',
        name: 'Users'
      }
    ]
  }
})
