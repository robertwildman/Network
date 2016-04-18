class UserNotifier < ActionMailer::Base
  default from: "from@example.com"

  	def friend_requetsted(user_friendship_id)
  		user_friendship = UserFriendship.find(user_friendship_id)


  		@user =  user_friendship.user
  		@friend = user_friendship.friend

  		mail to: @friend.email,
  				subject:"#{@user.first_name} want to be your friend on network"
  	end

	def friend_requetsted_accepted(user_friendship_id)
  		user_friendship = UserFriendship.find(user_friendship_id)


  		@user =  user_friendship.user
  		@friend = user_friendship.friend

  		mail to: @friend.email,
  				subject:"#{@friend.first_name} has been you there friend on network"
  	end
end
