class AdminController < ApplicationController
  def index
    @members=Member.all
  end

  def today
    @members=Member.all
  end

  def application
  end

  def other_application
  end

  def employeelist
    @members=Member.all
   
  end

  def employeelist_edit
    @member=Member.find(params[:id])
  end

  def employeelist_update
    @member = Member.find(params[:id])
    @member.name = params[:name]
    @member.phone = params[:phone]
    @member.mail = params[:mail]
    @member.member_type = params[:member_type]
    if @member.save
      flash[:notice] ="メンバー情報を編集しました"
      redirect_to("/admin/employeelist")
    else
      flash[:alert] = "メンバーの編集に失敗しました"
      redirect_to("/admin/#{@member.id}employeelist_edit")
    end
  end

  def employeelist_delete
    @member=Member.find(params[:id])
    @member.destroy
    redirect_to("/admin/employeelist")
  end

  def management
    @members=Member.all
  end

  def schedule
    @members=Member.all
  end
  def schedule_new
    @member=Member.find(params[:id])  
    @attendance = Attendance.where(member_id: @member.id, work_date: Date.today).last
  end

  def new_member
  end

  def member_create
    @member=Member.new(name: params[:name],member_type: params[:member_type],mail:params[:mail],phone: params[:phone],password: params[:password])
    if @member.save
      flash[:notice] ="新メンバーを追加しました"
      redirect_to("/admin/employeelist")
    else
      flash[:alert] = "メンバーの追加に失敗しました"
      redirect_to("/admin/new_member")
    end
  end
  
end
