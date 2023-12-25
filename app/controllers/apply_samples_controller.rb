class ApplySamplesController < ApplicationController
 
  def index
    @works = Work.all
    @soft = params[:company]
    @work = params[:work_id]
    @order = params[:ordered]
    
    @softs = soft_all
    if @soft.present?
      @softs = @softs.company_search(@soft)
    end
    if @order.present?
      if @order == "new"
        @softs = @softs.new_search
      elsif @order == "old"
        @softs = @softs.old_search
      elsif @order == "view_many"
        @softs = @softs.view_many_search
      elsif @order == "view_few"
        @softs = @softs.view_few_search
      elsif @order == "true"
        @softs = @softs.public_true
      elsif @order == "false"
        @softs = @softs.public_false
      end
    end
    
      @softs_1 = @softs.work_search(1)
      @softs_2 = @softs.work_search(2)
      @softs_3 = @spfts.work_search(3)
  end
  
  def sort
    case params[:order]
    when 'asc'
      @softs = Soft.order(created_at: :asc)
    when 'desc'
      @softs = Soft.order(created_at: :desc)
    else
      @softs = Soft.order(created_at: :desc)
    end

    render :index
  end

private
  
  def soft_all
    Soft.all.public_true
  end

end
