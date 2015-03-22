@team = ARGV.first.split(",")
@other_team = @team.slice!(1,3)

  puts "World's Best Tournament"

  def print_matchups
   c = 0
   3.times do
     c += 1

   puts
   puts "Round " + c.to_s + ":"
   puts @team[0] + " VS" + @other_team[0]
   puts @other_team[2] + " VS" + @other_team[1]

   @other_team.rotate!(2)
 end
end

print_matchups
