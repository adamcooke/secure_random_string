# Secure Random String

A simple helper to generate a secure random string for use as an API token or other such token.

## Installation

```ruby
gem 'secure_random_string', '~> 1.0'
```

## Usage

```ruby
# Generate a 10 character string consisting of upper & lower case letters and numbers
string = SecureRandomString.new(10)

# Include characters
string = SecureRandomString.new(10, :characters => true)

# Include ? and * in the possible character pool
string = SecureRandomString.new(10, :extra => ['?', '*'])

# Don't include numbers
string = SecureRandomString.new(10, :numbers => false)

# Don't include lowercase letters
string = SecureRandomString.new(10, :lowercase => false)

# Don't include uppercase letters
string = SecureRandomString.new(10, :uppercase => false)
```
