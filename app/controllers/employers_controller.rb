class EmployersController < ApplicationController
    def index
        @employers = Employer.all
    end

    def show
        @employer = Employer.find(params[:id])
    end

    def new
        @employer = Employer.new
    end

    def create
        @employer = Employer.create(employer_params)
        redirect_to employers_path
    end

    private

    def employer_params
        params.require(:employer).permit(:f_name, :l_name, :company, :address)
    end

end
