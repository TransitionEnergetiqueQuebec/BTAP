require 'csv'
csv_path = "C:/Users/michelangelo/Desktop/WEATHER/Quebec.epw"

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
print last_depth_temps