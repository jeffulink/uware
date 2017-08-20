class CompaniesController < ApplicationController

    before_action :set_company, only: [:edit, :update, :show, :destroy]
    def index
        @companies = Company.all.page(params[:page]).per(9)
    end

    def show
      @comment = Comment.new
      @comments = @companies.comments
    end

    def edit
    end

    def new
        @company = Company.new
    end

    def vote

    end

    def create
        binding.pry
        @company = Company.create(company_params)
        if @company.save
          flash[:success] = "已經成功新增"
          redirect_to companies_path
        else
          flash[:danger] ="錯誤輸入"
          redirect_to companies_path
        end
    end

    def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'companies was successfully updated.' }
        format.json { render :show, status: :ok, location: @Company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :employee_id, :area_id)
    end
end
