class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @group = Group.find(params[:group_id])
    @member = @group.members.find(params[:id])
    @member_list = @group.members.all
    @payments = @member.payments.all
  end

  def new
    @group = Group.find(params[:group_id])
    @member = @group.members.new
  end

  def create
    @group = Group.find(params[:group_id])
    @member = @group.members.create(params[:member])
    if @member.save
      redirect_to group_path(@group), :notice => "Successfully created member."
    else
      render :action => 'new'
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update_attributes(params[:member])
      redirect_to @member, :notice  => "Successfully updated member."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to members_url, :notice => "Successfully destroyed member."
  end
end
