class HomeController < ApplicationController
  def top
  end
  def login
    @member=Member.find_by(id: params[:id], password: params[:password])
    if @member
      flash[:notice]="ログインしました"
      redirect_to("/member/#{@member.id}")
    else
      flash[:alert] = "社員番号またはパスワードが間違っています"
    end
  end
end