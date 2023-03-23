class AdminController < ApplicationController
  before_action :authenticate_member,except: :employeelist
  # before_action :authenticate_admin

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
    @member.authority= params[:authority]
    if @member.save
      flash[:notice] ="--メンバー情報を編集しました--"
      redirect_to("/admin/employeelist")
    else
      flash[:alert] = "--メンバーの編集に失敗しました--"
      redirect_to("/admin/#{@member.id}employeelist_edit")
    end
  end

  def employeelist_delete
    @member=Member.find(params[:id])
   if @member.destroy
      flash[:notice] ="--メンバーを削除しました--"
      redirect_to("/admin/employeelist")
    else
      flash[:alert] = "--メンバーの削除に失敗しました--"
      redirect_to("/admin/new_member")
    end
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
    @member=Member.new(name: params[:name],member_type: params[:member_type],mail:params[:mail],phone: params[:phone],password: params[:password],authority: false)
    if @member.save
      # @attendance = Attendance.create(member_id: @member.id, work_date: Date.today,start_time: Time.now)
      flash[:notice] ="--新メンバーを追加しました--"
      redirect_to("/admin/employeelist")
    else
      flash[:alert] = "--メンバーの追加に失敗しました--"
      redirect_to("/admin/new_member")
    end
  end

  def logout
    if @current_member
      session.delete(:member_id)
      @current_member=nil
    end
    redirect_to("/")
  end
  
end
