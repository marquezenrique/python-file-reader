class User
  attr_accessor :id, :username, :email, :is_admin

  def initialize(id, username, email, is_admin=false)
    @id = id
    @username = username
    @email = email
    @is_admin = is_admin
  end
end

mock_user_list_example_rb = [
  User.new(1, "Alice", "alice@example.com", false),
  User.new(2, "Bob", "bob@example.com", true),
  User.new(3, "Charlie", "charlie@example.com", false),
  User.new(4, "Diana", "diana@example.com", true),
  User.new(5, "Evan", "evan@example.com", false),
  User.new(6, "Fiona", "fiona@example.com", true),
  User.new(7, "George", "george@example.com", false),
  User.new(8, "Hannah", "hannah@example.com", true),
  User.new(9, "Ian", "ian@example.com", false),
  User.new(10, "Jenna", "jenna@example.com", true)
]

def fetch_user_data_example_rb(user_id)
  user = mock_user_list_example_rb.find { |user| user.id == user_id }
  if user
    Promise.new do |resolve, reject|
      setTimeout(1000) { resolve.call(user) }
    end
  else
    Promise.new { |resolve, reject| reject.call("User not found") }
  end
end

fetch_user_data_example_rb(1)
  .then { |user| puts "User data: #{user.inspect}" }
  .catch { |error| puts "Error fetching user data: #{error}" }
