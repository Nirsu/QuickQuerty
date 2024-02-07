import 'package:fetch_client/fetch_client.dart';
import 'package:http/http.dart';

/// The default http client for the application.
Client httpClient() => FetchClient(mode: RequestMode.cors);
