class EmailsController < ApplicationController
  def validate
    validator = Emails::ValidateService.new(params[:email])
    @valid = validator.execute
  end
end
