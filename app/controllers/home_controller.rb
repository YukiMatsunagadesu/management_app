class HomeController < ApplicationController
  before_action :authenticate_member, except: [:top,:login]

  # before_action :authenticate_admin, except: [:top,:login]

  def top
  end
  def login
    @member=Member.find_by(id: params[:id], password: params[:password])
    if @member && @member.authority
      session[:member_id] = @member.id
      flash[:alert] = "--ログインできてない--"
      redirect_to("/member/#{@member.id}")
      # redirect_to("/admin")
    elsif @member && !@member.authority
      session[:member_id] = @member.id
      flash[:notice]="--ログインしました--"
      redirect_to("/member/#{@member.id}")
    else
      flash[:alert] = "--ログインに失敗しました--"
      redirect_to("/home/top")
    end
  end
end

