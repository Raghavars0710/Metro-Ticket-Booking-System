#Metro route data
MetroService.create!(source:"Vijay Nagar Metro Station",destination:"Bapat Metro Station")
MetroService.create!(source:"Bapat Metro Station",destination:"Vijay Nagar Metro Station")
MetroService.create!(source:"MR10 Metro Station",destination:"Bapat Metro Station")
MetroService.create!(source:"Vijay Nagar Metro Station",destination:"Airport Metro Station")

#trains Data
Train.create!(name:"Vande Metro",train_number:122191,source:"Vijay Nagar Metro Station",destination:"Bapat Metro Station",metro_service_id:1)
Train.create!(name:"Bharat Metro",train_number:231452,source:"Vijay Nagar Metro Station",destination:"Bapat Metro Station",metro_service_id:1)
Train.create!(name:"Indore Express Metro",train_number:201992,source:"Vijay Nagar Metro Station",destination:"Airport Metro Station",metro_service_id:4)
Train.create!(name:"Vande Indore Metro",train_number:234567,source:"Bapat Metro Station",destination:"Vijay Nagar Metro Station",metro_service_id:2)
Train.create!(name:"Indore SF Metro",train_number:123399,source:"MR10 Metro Station",destination:"Bapat Metro Station",metro_service_id:3)
Train.create!(name:"ARCTSL Metro",train_number:322344,source:"MR10 Metro Station",destination:"Bapat Metro Station",metro_service_id:3)