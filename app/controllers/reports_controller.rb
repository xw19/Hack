class ReportsController < ApplicationController

  def create
    @child = Child.find(params[:child_id])
    @child.reports.create(report_params)
    redirect_to :back, alert: "Reported"
  end

  def index
    @reports = Report.order('created_at')
  end

  private

  def report_params
    params.require(:report).permit(:message)
  end
end
