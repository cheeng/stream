//Auto-generated by RSP Compiler
//Source: test/syntax/include.rsp.html
library include_rsp;

import 'dart:async';
import 'dart:io';
import 'package:stream/stream.dart';

/** Template, include, for rendering the view. */
Future include(HttpConnect connect, {foo, more, less}) { //#3
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = ContentType.parse("""text/html; charset=utf-8""");

  var less = new StringBuffer(); _cs_.add(connect); //var#3
  connect = new HttpConnect.buffer(connect, less); response = connect.response;

  response.write("""
less is more
"""); //#4

  connect = _cs_.removeLast(); response = connect.response;
  less = less.toString();

  response.write("""

"""); //#6

  var _0 = new StringBuffer(); _cs_.add(connect); //var#8
  connect = new HttpConnect.buffer(connect, _0); response = connect.response;

  response.write("""
  More information
"""); //#9

  return RSP.nnf(include(new HttpConnect.chain(connect), more: """recursive""")).then((_) { //include#10

    connect = _cs_.removeLast(); response = connect.response;

    return RSP.nnf(include(new HttpConnect.chain(connect), foo: true, less: less, more: _0.toString())).then((_) { //include#7

      return RSP.nnf();
    }); //end-of-include
  }); //end-of-include
}
