class Result < ActiveRecord::Base
  attr_accessible :data, :end_date, :project_name, :start_date
  serialize :data, Hash
  
  def get_range
    Result.where(:start_date => Range.new(params[:new_range])).pluck(:project_name)
  end
  
end
