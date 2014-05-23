ActiveAdmin.register Article do

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  index do
    column :id
    column "Titre", :title
    column :description
    column "Prix", :price, :sortable => :price do |article|
      div :class=> "center" do
        number_to_currency article.price
      end
    end
    column "Quantité", :quantity
    column "Créé le", :created_at
  end

end
