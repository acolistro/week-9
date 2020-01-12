class Project
  attr_accessor :id, :title, :volunteers

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @title = attributes.fetch(:title)
    @volunteers = attributes.fetch(:volunteers)
  end


  def self.title(id)
    project_title = DB.exec("SELECT title FROM projects WHERE id = #{id};").first
  end  
