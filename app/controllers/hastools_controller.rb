class HastoolsController < ApplicationController
  # POST PUT DELETE 
  def create
    @curriculum = Curriculum.find(params[:curriculum_id])
    @tool = Tool.find(params[:tool_id])
    if(!@curriculum.nil? && !@tool.nil?)
      @has_tool = HasTool.new(curriculum_id: params[:curriculum_id], tool_id: params[:tool_id])
      if @has_tool.save
        render 'hastools/show'
      else
        raise "error".to_yaml
      end
    end
  end
  private 
  def hastool_params
    params.require(:has_tool).permit(:curriculum_id, :tool_id)
  end
end