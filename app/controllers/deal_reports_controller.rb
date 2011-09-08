class DealReportsController < ApplicationController
  def index
    @deal_reports = Deal.all
  end

  def show
    @deal_report = Deal.find(params[:id])
  end

  def new
    @deal_report = Deal.new
  end

  def create
    @deal_report = Deal.new(params[:deal_report])
    if @deal_report.save
      redirect_to @deal_report, :notice => "Successfully created deal_report."
    else
      render :action => 'new'
    end
  end

  def edit
    @deal_report = Deal.find(params[:id])
  end

  def update
    @deal_report = Deal.find(params[:id])
    if @deal_report.update_attributes(params[:deal_report])
      redirect_to @deal_report, :notice  => "Successfully updated deal_report."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @deal_report = Deal.find(params[:id])
    @deal_report.destroy
    redirect_to deals_url, :notice => "Successfully destroyed deal_report."
  end
end
