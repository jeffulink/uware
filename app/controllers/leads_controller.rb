class LeadsController < ApplicationController

    before_action :set_lead, only: [:edit, :update, :show, :destroy]
    def index
        @leads = Lead.all.page(params[:page]).per(5)
    end

    def show
    #   @comment = Comment.new
    #   @comments = @leads.comments
    end

    def edit
    end

    def new
        @lead = Lead.new
    end

    def vote

    end

    def create
        
        @lead = Lead.create(lead_params)
        if @lead.save
          flash[:success] = "已經成功新增"
          redirect_to leads_path
        else
          flash[:danger] ="錯誤輸入"
          redirect_to leads_path
        end
    end

    def destroy
    @lead.destroy
    respond_to do |format|
      format.html { redirect_to leads_url, notice: 'Lead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def update
    respond_to do |format|
        # binding.pry
      if @lead.update(lead_params)
        format.html { redirect_to @lead, notice: 'leads was successfully updated.' }
        format.json { render :show, status: :ok, location: @Lead }
      else
        format.html { render :edit }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lead_params
      params.require(:lead).permit(:customer, :sales, :area, :opp, :order)
    end
end

