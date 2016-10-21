class ArticlesController < ApplicationController

  before_filter :basic_auth, only: [:new]
  def index
  end

  def new
  def basic_auth
    authenticate_or_request_with_http_basic do |user,pass|
      user == ENV["BASIC_AUTH_USER"] && ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
