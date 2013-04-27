class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def new
    @member = Member.find(params[:member_id])
    @payment = @member.payments.new
  end

  def create
    @member = Member.find(params[:member_id])
    @payment = @member.payments.create(params[:payment])
    if @payment.save
      redirect_to group_member_path(@group, @member), :notice => "Successfully created payment."
    else
      render :action => 'new'
    end
  end

  def edit
    @payment = Payment.find(params[:id])
  end

  def update
    @payment = Payment.find(params[:id])
    if @payment.update_attributes(params[:payment])
      redirect_to @payment, :notice  => "Successfully updated payment."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy
    redirect_to payments_url, :notice => "Successfully destroyed payment."
  end
end
