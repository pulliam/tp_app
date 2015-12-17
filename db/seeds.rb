accounts = [
			{account_name: "Checking Account", amount: 15010, status: "active", user_id: 1},
			{account_name: "Savings Account", amount: 55020, status: "active", user_id: 1},
			{account_name: "Travel Fund Account", amount: 25030, status: "inactive", user_id: 1},
			{account_name: "Investment Account", amount: 1500500, status: "active", user_id: 1},
			{account_name: "Education Account", amount: 14500, status: "active", user_id: 1}
		]


User.create({name: "Mr. Smith", username: "smith_john", email: "john@smith.com", password: "encrypted"})

Account.create(accounts)