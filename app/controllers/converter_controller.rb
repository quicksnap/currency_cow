class ConverterController < ApplicationController
  respond_to :json

  def convert
    result = nil

    begin
      # Needs test.
      from = Currency.find_by(country: params[:from_country])
      to = Currency.find_by(country: params[:to_country])
      from_base = from.convert_to_base params[:amount]
      result = to.convert_from_base( from_base )
    rescue Exception
    end

    if result.nil?
      render json: { error: 'No good!' }, status: 422
    else
      render json: result.to_json
    end
  end
end
