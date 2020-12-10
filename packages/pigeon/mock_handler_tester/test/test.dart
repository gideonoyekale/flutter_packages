// Autogenerated from Pigeon (v0.1.15), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import
// @dart = 2.8
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'message.dart';

abstract class TestNestedApi {
  SearchReply search(Nested arg);
  static void setup(TestNestedApi api) {
    {
      const BasicMessageChannel<Object> channel = BasicMessageChannel<Object>(
          'dev.flutter.pigeon.NestedApi.search', StandardMessageCodec());
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object message) async {
          if (message == null) {
            return <Object, Object>{};
          }
          final Nested input = Nested.decode(message);
          final SearchReply output = api.search(input);
          return <Object, Object>{'result': output.encode()};
        });
      }
    }
  }
}

abstract class TestHostApi {
  SearchReply search(SearchRequest arg);
  static void setup(TestHostApi api) {
    {
      const BasicMessageChannel<Object> channel = BasicMessageChannel<Object>(
          'dev.flutter.pigeon.Api.search', StandardMessageCodec());
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object message) async {
          if (message == null) {
            return <Object, Object>{};
          }
          final SearchRequest input = SearchRequest.decode(message);
          final SearchReply output = api.search(input);
          return <Object, Object>{'result': output.encode()};
        });
      }
    }
  }
}
