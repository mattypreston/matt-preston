class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  def index
    #Add code here to get skills and resume details
    @articles = Article.all rescue nil
    @resumes = Resume.all rescue nil
    @skills = Skill.all rescue nil
    @education_histories = EducationHistory.all rescue nil
    @experience_histories = ExperienceHistory.all rescue nil
  end
end
