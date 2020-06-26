class ApplicantsController < ApplicationController
    def index 
        @applicants = Applicant.all
    end
    def show
        @applicant = Applicant.find(params[:id])
    end

    def new
        @applicant = Applicant.new
    end

    def create
        @applicant = Applicant.create(applicant_params)
        redirect_to applicants_path
    end

    private

    def applicant_params
        params.require(:applicant).permit(:f_name, :l_name, :email)
    end
end
