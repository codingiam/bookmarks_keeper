# frozen_string_literal: true

class ErrorsController < ApplicationController # :nodoc:
  def show
    render view, status: status_code
  end

  private

  def view
    status_code.to_s
  end

  def status_code
    params[:code] || 500
  end
end
