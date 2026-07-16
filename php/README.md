# Gender Detector API - PHP Package

Easily detect the gender of an individual based on their name. This API uses AI to predict the likely gender of a person by their name

## Installation

Install via Composer:

```bash
composer require apiverve/genderdetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Genderdetector\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'name' => 'John Mcdonald',
    'country' => 'us'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Genderdetector\Client;
use APIVerve\Genderdetector\Exceptions\APIException;
use APIVerve\Genderdetector\Exceptions\ValidationException;

try {
    $response = $client->execute(['name' => 'John Mcdonald', 'country' => 'us']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/genderdetector?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/genderdetector?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/genderdetector?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
