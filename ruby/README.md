# Gender Detector API - Ruby Gem

Gender Detector is a gender prediction API that estimates the likely gender of a person from their name. Pass a first name and get back the predicted gender as JSON, ready for salutations, profile defaults, or audience analysis.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_genderdetector'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_genderdetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_genderdetector'

# Initialize the client
client = APIVerve::Genderdetector::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  name: "John Mcdonald",
  country: "us"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ name: "John Mcdonald", country: "us" })
  puts response["data"]
rescue APIVerve::Genderdetector::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Genderdetector::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Genderdetector::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "name": "John Mcdonald",
    "country": "US",
    "detected": true,
    "gender": "male"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/genderdetector?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/genderdetector?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/genderdetector?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
