require 'faker'
Faker::Config.locale = 'fr-CA'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ayman = User.create(email: "ayman@live.com", nom:"hamdi", prenom: "Ayman", password: "ayman123")
mathieu = User.create(email: "mathieu@live.com", nom:"mathieu", prenom: "dupont", password: "mathieu123")
pablo = User.create(email: "pablo@live.com", nom:"escobar", prenom: "pablo", password: "pablo123")
eric = User.create(email: "eric@live.com", nom:"sicard", prenom: "eric", password: "eric123", is_admin: true)
(1..2).each do |i|
Business.create(name: Faker::Restaurant.name, 
                description: Faker::Restaurant.description, 
                phone: Faker::PhoneNumber.phone_number, 
                email: Faker::Internet.safe_email, 
                site_web: Faker::Internet.url, 
                menus_attributes: [
                    {
                        title: "Fin de semaine",
                        menus_attributes: [
                            {   
                                title: "Dejeuner", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            },
                            {   title: "Diner", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            },
                            {   title: "Souper", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            }
                        ]
                    }
                ]
            )
end


(1..3).each do |i|
Business.create(name: Faker::Restaurant.name, 
                description: Faker::Restaurant.description, 
                phone: Faker::PhoneNumber.phone_number, 
                email: Faker::Internet.safe_email, 
                site_web: Faker::Internet.url, 
                user: ayman,
                menus_attributes: [
                    {
                        title: "Fin de semaine",
                        menus_attributes: [
                            {   
                                title: "Dejeuner", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            },
                            {   title: "Diner", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            },
                            {   title: "Souper", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            }
                        ]
                    }
                ]
            )
end

(1..4).each do |i|
Business.create(name: Faker::Restaurant.name, 
                description: Faker::Restaurant.description, 
                phone: Faker::PhoneNumber.phone_number, 
                email: Faker::Internet.safe_email, 
                site_web: Faker::Internet.url, 
                user: mathieu,
                menus_attributes: [
                    {
                        title: "Fin de semaine",
                        menus_attributes: [
                            {   
                                title: "Dejeuner", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            },
                            {   title: "Diner", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            },
                            {   title: "Souper", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            }
                        ]
                    }
                ]
            )
end


(1..5).each do |i|
    Business.create(name: Faker::Restaurant.name, 
                    description: Faker::Restaurant.description, 
                    phone: Faker::PhoneNumber.phone_number, 
                    email: Faker::Internet.safe_email, 
                    site_web: Faker::Internet.url, 
                    user: pablo,
                    menus_attributes: [
                        {
                            title: "Fin de semaine",
                            menus_attributes: [
                                {   
                                    title: "Dejeuner", 
                                    items_attributes: [
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                                ]
                                },
                                {   title: "Diner", 
                                    items_attributes: [
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                                ]
                                },
                                {   title: "Souper", 
                                    items_attributes: [
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                                ]
                                }
                            ]
                        }
                    ]
                )
    end