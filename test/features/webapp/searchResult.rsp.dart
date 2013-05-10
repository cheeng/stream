//Auto-generated by RSP Compiler
//Source: test/features/searchResult.rsp.html
part of features;

/** Template, searchResult, for rendering the view. */
Future searchResult(HttpConnect connect, {criteria}) { //#2
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = ContentType.parse("""text/html; charset=utf-8""");

  response.write("""
<html>
  <head>
    <title>Search Result</title>
    <link href="theme.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <h1>Search Result</h1>
    <p>Criteria:</p>
    <ul>
      <li>text: """); //#2

  response.write(RSP.nns(criteria.text)); //#11


  response.write("""
</li>
      <li>since: """); //#11

  response.write(RSP.nns(criteria.since)); //#12


  response.write("""
</li>
      <li>within: """); //#12

  response.write(RSP.nns(criteria.within)); //#13


  response.write("""
</li>
      <li>hasAttachment: """); //#13

  response.write(RSP.nns(criteria.hasAttachment)); //#14


  response.write("""
</li>
    </ul>
  </body>
</html>
"""); //#14

  return RSP.nnf();
}
