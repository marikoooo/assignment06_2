100.times do |i|
	Product.seed_once(:id) do |product|
	  product.id = i + 1
	  product.title = "title : #{ i + 1 }"
	  product.price = (i + 1) * 100
	  product.description = "Designed by AI#{ i + 1 }"
	  product.admin_id = 1
	  product.category_id = rand(1..5)
	end
end
Category.seed(:id,
	{ id: 1, name: "oilpainting" }, 	
	{ id: 2, name: "acrylicpainting" }, 	
	{ id: 3, name: "watercolorpainting" }, 	
	{ id: 4, name: "photography" }, 	
	{ id: 5, name: "sculpture" }
)

