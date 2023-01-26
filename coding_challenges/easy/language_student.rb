module Implementation
  class LanguageStudent
    attr_reader :languages

    def languages; @languages.to_enum; end

    def initialize
      @languages = Array.new
    end

    def add_language(lang)
      @languages << lang unless @languages.include?(lang)
    end
  end

  class LanguageTeacher < LanguageStudent
    def initialize
      super
    end

    def teach(student, lang)
      @languages.include?(lang) ?
        student.add_language(lang) : false
    end
  end
end

# teacher = LanguageTeacher.new
# teacher.add_language('English')
# student = LanguageStudent.new
# teacher.teach(student, 'English')
# print student.languages