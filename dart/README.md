# Gender Detector API - Dart/Flutter Client

Gender Detector is a gender prediction API that estimates the likely gender of a person from their name. Pass a first name and get back the predicted gender as JSON, ready for salutations, profile defaults, or audience analysis.

[![pub package](https://img.shields.io/pub/v/apiverve_genderdetector.svg)](https://pub.dev/packages/apiverve_genderdetector)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Gender Detector API](https://apiverve.com/marketplace/genderdetector?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_genderdetector: ^1.2.4
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

- **API Home:** [Gender Detector API](https://apiverve.com/marketplace/genderdetector?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/genderdetector](https://docs.apiverve.com/ref/genderdetector?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
