# Supprime tous les produits existants avant de recréer
Product.destroy_all

# Liste des produits avec les images locales
products = [
  { name: "Pommes Golden", category: "Fruits", image_url: "pommes_golden.jpg" },
  { name: "Bananes", category: "Fruits", image_url: "bananes.jpg" },
  { name: "Oranges", category: "Fruits", image_url: "oranges.jpg" },
  { name: "Poires", category: "Fruits", image_url: "poires.jpg" },
  { name: "Fraises", category: "Fruits", image_url: "fraises.jpg" },
  { name: "Kiwis", category: "Fruits", image_url: "kiwis.jpg" },
  { name: "Citrons", category: "Fruits", image_url: "citrons.jpg" },
  { name: "Pamplemousses", category: "Fruits", image_url: "pamplemousses.jpg" },
  { name: "Tomates", category: "Légumes", image_url: "tomates.jpg" },
  { name: "Carottes", category: "Légumes", image_url: "carottes.jpg" },
  { name: "Courgettes", category: "Légumes", image_url: "courgettes.jpg" },
  { name: "Aubergines", category: "Légumes", image_url: "aubergines.jpg" }
]

Product.find_by(name: "Courgettes").prices.create!(value: 1.20, date: Date.today - 1, market_type: "gros")
Product.find_by(name: "Courgettes").prices.create!(value: 1.15, date: Date.today - 2, market_type: "gros")

# Création des produits
products.each do |product|
  Product.create!(product)
end

puts "Seeds terminés : #{Product.count} produits créés."
