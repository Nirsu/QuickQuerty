import 'dart:convert';

import 'package:http/http.dart';
import 'package:quick_querty/main.dart';
import 'package:quick_querty/quote/quote_model.dart';

/// Service to get the quotes from the API.
class QuoteService {
  final String _url = 'https://api.quotable.io';

  final List<String> _quoteSplitedByWords = <String>[];

  /// Get the quotes from the API.
  Future<String> getRandomQuote() async {
    try {
      final Response response = await getIt<Client>().get(
        Uri.parse(
          '$_url/quotes/random',
        ),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load quotes');
      }

      final List<dynamic> quotes = jsonDecode(response.body);

      final QuoteModel quote = QuoteModel.fromJson(quotes.first);

      _quoteSplitedByWords.addAll(quote.content.split(' '));

      return quote.content;
    } catch (e) {
      rethrow;
    }
  }
}
