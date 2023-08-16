# User.create!(email: "admin@gmail.com",password:"123456", encrypted_password: "encrypted_password_value", name: "Admin", contact_number: 1234567890, address: "123 Main Street, City, Country", role: "Admin", date_of_birth: "1990-01-01", gender: "male", confirmed_at: Time.now)
# User.create!(email: "raghav@gmail.com",password:"123456", encrypted_password: "encrypted_password_value", name: "Raghav", contact_number: 8965068574, address: "123 Main Street, City, Country", role: "Passenger", date_of_birth: "2000-07-06", gender: "male", confirmed_at: Time.now)



























# MetroService.create(source:"Airport_metro_station",destination:"Super_corridor_metro")
# MetroService.create(source:"Airport_metro_station",destination:"Love_kush_metro")
# MetroService.create(source:"Airport_metro_station",destination:"MR_10_metro")
# MetroService.create(source:"Airport_metro_station",destination:"Sukhliya_metro")
# MetroService.create(source:"Airport_metro_station",destination:"Bapat_metro")
# MetroService.create(source:"Airport_metro_station",destination:"Vijay_nagar_metro")

# MetroService.create(source:"Super_corridor_metro_station",destination:"Love_kush_metro")
# MetroService.create(source:"Super_corridor_metro_station",destination:"MR_10_metro")
# MetroService.create(source:"Super_corridor_metro_station",destination:"Sukhliya_metro")
# MetroService.create(source:"Super_corridor_metro_station",destination:"Bapat_metro")
# MetroService.create(source:"Super_corridor_metro_station",destination:"Vijay_nagar_metro")

# MetroService.create(source:"Love_kush_metro_station",destination:"MR_10_metro")
# MetroService.create(source:"Love_kush_metro_station",destination:"Sukhliya_metro")
# MetroService.create(source:"Love_kush_metro_station",destination:"Bapat_metro")
# MetroService.create(source:"Love_kush_metro_station",destination:"Vijay_nagar_metro")

# MetroService.create(source:"MR_10_metro_station",destination:"Sukhliya_metro")
# MetroService.create(source:"MR_10_metro_station",destination:"Bapat_metro")
# MetroService.create(source:"MR_10_metro_station",destination:"Vijay_nagar_metro")

# MetroService.create(source:"Sukhliya_metro_station",destination:"Bapat_metro")
# MetroService.create(source:"Sukhliya_metro_station",destination:"Vijay_nagar_metro")

# MetroService.create(source:"Bapat_metro_station",destination:"Vijay_nagar_metro")


# opposite routes trains

# Train.create(name: "Vande Indore Metro", train_number: 123456, source:"Vijay_nagar_metro_station", destination: "Airport_metro" )
















# Train.create(name: "Vande Indore Metro", train_number: 123456, source:"Vijay_nagar_metro_station", destination: "Airport_metro" ,metro_service_id:10)

# Train.create(name: "Vande Indore Metro", train_number: 123456, source:"Airport_metro_station", destination: "Love_kush_metro" ,metro_service_id:11)
# Train.create(name: "Vande Indore Metro", train_number: 123456, source:"Airport_metro_station", destination: "MR_10_metro" ,metro_service_id:12 )
# Train.create(name: "Vande Indore Metro", train_number: 123456, source:"Airport_metro_station", destination: "Sukhliya_metro" ,metro_service_id:13 ) 
# Train.create(name: "Vande Indore Metro", train_number: 123456, source:"Airport_metro_station", destination: "Bapat_metro" ,metro_service_id:14)
# Train.create(name: "Vande Indore Metro", train_number: 123456, source:"Airport_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:15)

# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "Love_kush_metro" ,metro_service_id: 16)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "MR_10_metro" ,metro_service_id:17)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "Sukhliya_metro" ,metro_service_id:18)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "Bapat_metro" ,metro_service_id:19)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:20)

# Train.create(name: "Indore Express Metro", train_number: 612345, source:"Love_kush_metro_station", destination: "MR_10_metro" ,metro_service_id:21)
# Train.create(name: "Indore Express Metro", train_number: 612345, source:"Love_kush_metro_station", destination: "Sukhliya_metro" ,metro_service_id:22)
# Train.create(name: "Indore Express Metro", train_number: 612345, source:"Love_kush_metro_station", destination: "Bapat_metro" ,metro_service_id:23)
# Train.create(name: "Indore Express Metro", train_number: 612345, source:"Love_kush_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:24 )

# Train.create(name: "Bharat Express Metro", train_number: 461234, source:"MR_10_metro_station", destination: "Sukhliya_metro" ,metro_service_id:25)
# Train.create(name: "Bharat Express Metro", train_number: 461234, source:"MR_10_metro_station", destination: "Bapat_metro" ,metro_service_id:26)
# Train.create(name: "Bharat Express Metro", train_number: 461234, source:"MR_10_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:27)

# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Sukhliya_metro_station", destination: "Bapat_metro" ,metro_service_id:28)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Sukhliya_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:29)

# Train.create(name: "Bapat - Vijaynagar ExpressMetro", train_number: 612345, source:"Bapat_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:30)





# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Airport_metro_station", destination: "Super_corridor_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Airport_metro_station", destination: "Love_kush_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Airport_metro_station", destination: "MR_10_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Airport_metro_station", destination: "Sukhliya_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Airport_metro_station", destination: "Bapat_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Airport_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:)

# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "Love_kush_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "MR_10_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "Sukhliya_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "Bapat_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Super_corridor_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:)

# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Love_kush_metro_station", destination: "MR_10_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Love_kush_metro_station", destination: "Sukhliya_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Love_kush_metro_station", destination: "Bapat_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Love_kush_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:)

# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"MR_10_metro_station", destination: "Sukhliya_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"MR_10_metro_station", destination: "Bapat_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"MR_10_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:)

# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Sukhliya_metro_station", destination: "Bapat_metro" ,metro_service_id:)
# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Sukhliya_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id:)

# Train.create(name: "Bharat Express Metro", train_number: 456123, source:"Bapat_metro_station", destination: "Vijay_nagar_metro" ,metro_service_id: )