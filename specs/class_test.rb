require('minitest/autorun')
require('minitest/rg')
require_relative('../class.rb')

class StudentTest < Minitest::Test


  def test_student_name()
    student = Student.new('Chloe', 'E24', '', '')
    assert_equal( 'Chloe', student.name)
  end

  def test_cohort()
    student = Student.new('Alison', 'E23', '', '')
    assert_equal('E23', student.cohort)
  end

  def test_set_name()
    student = Student.new('Chloe', 'E24', '' , '')
    student.name = 'Chloe Alcorn'
    assert_equal('Chloe Alcorn', student.name)
  end

  def test_set_cohort
    student = Student.new('Chloe', 'E24', '', '')
    student.cohort = 'G7'
    assert_equal('G7', student.cohort)
  end

  def test_student_talk
    student = Student.new('Chloe', 'E24', 'I can talk', '')
    assert_equal('I can talk', student.talk)
  end

  def test_student_fav_language()
    student = Student.new('Chloe', 'E24', 'I can talk', 'Ruby')
    assert_equal('I love Ruby', student.fav_lang)
  end

end
