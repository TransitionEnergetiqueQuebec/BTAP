require 'csv'
csv_path = "C:/Users/GIRROD/Desktop/WEATHER/Quebec.epw"

first_depth_temps = []
mid_depth_temps = []
last_depth_temps = []

CSV.foreach(csv_path) do |row|
  if row[0].include? "GROUND TEMPERATURES"
    num_depths = row[1]
    depth_1 = row[2]
    depth_2 = row[18]
    depth_3 = row[34]
    # index 3 thru 5 are for soil conductivity, density and specific heat
    first_depth_temps = row[6..17]
    mid_depth_temps = row[22..33]
    last_depth_temps = row[38..49]
  end
end
# do stuff with temps

sol_hash = {
  "January"=>first_depth_temps[0].to_f,
  "February"=>first_depth_temps[1].to_f,
  "March"=>first_depth_temps[2].to_f,
  "April"=>first_depth_temps[3].to_f,
  "May"=>first_depth_temps[4].to_f,
  "June"=>first_depth_temps[5].to_f,
  "July"=>first_depth_temps[6].to_f,
  "August"=>first_depth_temps[7].to_f,
  "September"=>first_depth_temps[8].to_f,
  "October"=>first_depth_temps[9].to_f,
  "November"=>first_depth_temps[10].to_f,
  "December"=>first_depth_temps[11].to_f
}

sssol_hash = {
  "January"=>mid_depth_temps[0].to_f,
  "February"=>mid_depth_temps[1].to_f,
  "March"=>mid_depth_temps[2].to_f,
  "April"=>mid_depth_temps[3].to_f,
  "May"=>mid_depth_temps[4].to_f,
  "June"=>mid_depth_temps[5].to_f,
  "July"=>mid_depth_temps[6].to_f,
  "August"=>mid_depth_temps[7].to_f,
  "September"=>mid_depth_temps[8].to_f,
  "October"=>mid_depth_temps[9].to_f,
  "November"=>mid_depth_temps[10].to_f,
  "December"=>mid_depth_temps[11].to_f
}

print sol_hash