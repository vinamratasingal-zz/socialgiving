class ItemController < ApplicationController
  before_filter :authenticate_user!
  def new
    @item = Item.new
  end
  
  def create 
    @item = Item.new(params[:item])
    if @item.save
    #send a text to all the users who are watching that category. 
    @users = @item.category.users.all.collect(&:user)
    users.each do |user| 
      number_to_send_to = params[:user.phonenumber]
      user_category = @item.category
      twilio_sid = "ACd8ae05c28c909a99854a99ce364088d6"
      twilio_token = "1a42e399176be13cde34cb70ade43ca3"
      twilio_phone_number = "6504504927"
      @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
      @twilio_client.account.sms.messages.create(
            :from => "+1#{twilio_phone_number}",
            :to => number_to_send_to,
            :body => "This is SocialGiving! A new item has been posted for #{user_category}. To
            claim this item, please go to localhost:3000/items/#{item_id}"
      )  
    else 
      render :new
    end 
  end
end
