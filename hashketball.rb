# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

#1 num_points_scored
def num_points_scored(name)
  player_points = 0
  # players = game_hash[:home][:players]
  game_hash.each do |key, value|
    # binding.pry
    # value.each do |attribute, data|
    #   binding.pry
    # end

    value[:players].each do |player|
      if player[:player_name] == name
        # puts player[:player_name] + "!"
        # puts player[:points].to_s + "!"
        player_points = player[:points]
      end
    end
  end

  return player_points
  # binding.pry
end
# TEST num_points_scored
# num_points_scored("Jeff Adrien")

# 2 shoe_size
def shoe_size(name)
  player_shoe = 0
  # players = game_hash[:home][:players]
  game_hash.each do |key, value|
    # binding.pry
    # value.each do |attribute, data|
    #   binding.pry
    # end

    value[:players].each do |player|
      if player[:player_name] == name
        # puts player[:player_name] + "!"
        # puts player[:shoe].to_s + "!"
        player_shoe = player[:shoe]
      end 
    end
  end

  return player_shoe
  # binding.pry
end
# TEST shoe_size
# shoe_size("Jeff Adrien")
# shoe_size("Alan Anderson")

# 3 team_colors
def team_colors(team)
  array_colors = []

  game_hash.each do |key, value|
    if value[:team_name] == team
      array_colors = value[:colors]
    end
    # binding.pry
  end

  return array_colors
  # binding.pry
end
# TEST team_colors
# team_colors
# team_colors("Brooklyn Nets")
# team_colors("Charlotte Hornets")

# 4 team_names
def team_names
  teams = []

  game_hash.each do |key, value|
    teams << value[:team_name]
    # binding.pry
  end

  return teams
end
# TEST team_names
# team_names


# 5 player_numbers
def player_numbers(team)
  play_num = []

  game_hash.each do |key, value|
    # puts value[:team_name]
    value[:players].each do |player|
      if value[:team_name] == team
        # puts player[:number]
        play_num << player[:number]
      end
    end

  end

  # binding.pry
  return play_num
end
# TEST player_numbers
# player_numbers("Charlotte Hornets")
# player_numbers("Brooklyn Nets")


# 6 player_stats
def player_stats(name)

  game_hash.each do |key, value|
    # puts value[:team_name]
    value[:players].each do |player|
      if player[:player_name] == name
        return player
      end
    end
  end

  # binding.pry
end
# TEST player_stats
# player_stats
# player_stats("Jeff Adrien")


# 7 big_shoe_rebounds
def big_shoe_rebounds
  biggest_shoe = 0
  player_obj = {}

  game_hash.each do |key, value|
    # puts value[:team_name]
    value[:players].each do |player|
      # name = player[:player_name]
      # rebo = player[:rebounds]
      shoe_s = player[:shoe]
      
      if shoe_s > biggest_shoe
        biggest_shoe = shoe_s
        player_obj = player
        # puts player[:player_name]
        # puts shoe_s
      end

      # binding.pry
    end
  end

  puts "biggest_shoe: #{biggest_shoe}"
  puts "player_name: #{player_obj[:player_name]}"
  puts "rebounds:#{player_obj[:rebounds]}"
  player_big_shoe_rebounds = player_obj[:rebounds]
  return player_big_shoe_rebounds
end
# TEST big_shoe_rebounds
big_shoe_rebounds



