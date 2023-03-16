class AdminController < ApplicationController
  def index
  end

  def today
  end

  def application
  end

  def employeelist
    @members=Member.all
   
  end

  def employeelist_edit
    @member=Member.find(params[:id])
  end
  def employeelist_update
    @member=Member.find(params[:id])
    @member.name=params[:name]
    @member.phone=params[:phone]
    @member.mail=params[:mail]
    @member.save
    redirect_to("/admin/employeelist")
  end

  def management
  end

  def schedule
  end

  def new_member
  end

  def member_create
    @member=Member.new(name: params[:name],phone: params[:phone],mail:params[:mail])
    @member.save
    redirect_to("/admin/employeelist")
  end
  
end
