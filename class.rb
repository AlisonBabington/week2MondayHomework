class Student

  attr_reader(:name, :cohort, :talk, :fav_lang)
  attr_writer(:name, :cohort, :talk, :fav_lang)

  def initialize(name, cohort,talk, fav_lang)
    @name = name
    @cohort = cohort
    @talk = talk
    @fav_lang = fav_lang
  end

  def student_name()
    @name = name
  end

  def student_talk ()
    return @talk
  end

  def fav_lang ()
    return "I love #{@fav_lang}"
  end



end
