def prompt(*args)
    print(*args)
    gets
end

@number_of_teams = prompt "Please enter the number of teams "
puts @number_of_teams

  def prompt_team_names
    n = 0
    4.times do
    n += 1

    @team_name = prompt "Please enter team " + n.to_s + "'s name "
    puts @team_name
    end
  end

  prompt_team_names

@team = @team_name.split(",")
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
