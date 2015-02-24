Deface::Override.new(
  :virtual_path => "spree/admin/shared/_configuration_menu",
  :name => "store_credits_admin_configurations_menu",
  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
  :text => "<%= configurations_sidebar_menu_item Spree.t(:store_credits), admin_store_credits_url %>")

Deface::Override.new(
  :virtual_path => "spree/admin/users/index",
  :name => "store_credits_admin_users_index_row_actions",
  :insert_bottom => "[data-hook='admin_users_index_row_actions']",
  :text => "<%= link_to_with_icon('icon-dollar', Spree.t('add_store_credit'), new_admin_user_store_credit_url(user), {no_text: true}) %>")

Deface::Override.new(
  :virtual_path => "spree/orders/edit",
  :name => "store_credits_orders_edit",
  :insert_after => "[data-hook='cart_buttons']",
  :partial => "spree/checkout/store_credits")

Deface::Override.new(
  :virtual_path => "spree/users/show",
  :name => "store_credits_account_my_orders",
  :insert_after => "[data-hook='account_my_orders']",
  :partial => "spree/users/store_credits")

Deface::Override.new(
  :virtual_path => "spree/admin/general_settings/edit",
  :name => "admin_general_settings_edit_for_sc",
  :insert_before => "[data-hook='buttons']",
  :partial => "spree/admin/store_credits/limit",
  :disabled => true)
