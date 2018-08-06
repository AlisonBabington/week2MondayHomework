require('minitest/autorun')
require('minitest/rg')
require_relative('../sportsclass.rb')

class SportsTeamTest < Minitest::Test

  def test_get_name
    team = SportsTeam.new('Hibs', ['Mike', 'Dan', 'Tom'], 'Tom McTom', '')
    assert_equal('Hibs' , team.name)
  end

  def test_get_players
    team = SportsTeam.new( 'Hibs', ['Mike', 'Dan', 'Tom'], 'Tom McTom', '')

    assert_equal(['Mike', 'Dan', 'Tom'], team.players)
  end

  def test_get_coach
    team = SportsTeam.new('Hibs', ['Mike', 'Dan', 'Tom'], 'Tom McTom', '')
    assert_equal('Tom McTom', team.coach)
  end

  def test_set_coach
    team = SportsTeam.new('Hibs', ['Mike', 'Dan', 'Tom'], 'Tom McTom', '')
    team.coach = 'Neil Lennon'
    assert_equal('Neil Lennon', team.coach)
  end

  def test_add_player
    team = SportsTeam.new('Hibs', ['Mike', 'Dan', 'Tom'], 'Tom McTom', '')
    team.add_player('John')
    assert_equal(4, team.players.count)
  end

  def test_check_players_true
    team = SportsTeam.new('Hibs', ['Mike', 'Dan', 'Tom'], 'Tom McTom', '')
    checked_players = team.check_players('Mike')
    assert_equal( true , checked_players)
  end

  def test_check_players_false
    team = SportsTeam.new('Hibs', ['Mike', 'Dan', 'Tom'], 'Tom McTom', '')
    checked_players = team.check_players('Charlie')
    assert_equal(false, checked_players)
  end

  def test_check_score
    team = SportsTeam.new('Hibs', ['Mike', 'Dan', 'Tom'], 'Tom McTom', 0)
    team.change_score(2)
    assert_equal(2, team.points)
  end

end
