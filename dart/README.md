# Gender Detector API - Dart/Flutter Client

Easily detect the gender of an individual based on their name. This API uses AI to predict the likely gender of a person by their name

[![pub package](https://img.shields.io/pub/v/apiverve_genderdetector.svg)](https://pub.dev/packages/apiverve_genderdetector)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Gender Detector API](https://apiverve.com/marketplace/genderdetector?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_genderdetector: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_genderdetector/apiverve_genderdetector.dart';

void main() async {
  final client = GenderdetectorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'name': 'John Mcdonald',
      'country': 'us'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Gender Detector API](https://apiverve.com/marketplace/genderdetector?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/genderdetector](https://docs.apiverve.com/ref/genderdetector?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
