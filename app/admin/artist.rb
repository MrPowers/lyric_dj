ActiveAdmin.register Artist do
  permit_params :first_name, :last_name, :slug
end
