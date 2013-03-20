//Auto-generated by RSP Compiler
//Source: test/features/fragView.rsp.html
part of features;

/** Template, fragView, for rendering the view. */
void fragView(HttpConnect connect, {Map infos: const {}, header, footer}) { //2
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = new ContentType.fromString("""text/html; charset=utf-8""");

  if (header != null) { //if#2

    response.write("""  """); //#3

    response.write(nnstr(header)); //#3


    response.write("""

"""); //#3
  } //if

  response.write("""
<ul>
  <li>This is a fragment and generated dynamically</li>
"""); //#5

  for (var type in infos.keys) { //for#7

    response.write("""    <li>"""); //#8

    response.write(nnstr(type)); //#8


    response.write("""

      <ol>
"""); //#8

    for (var name in infos[type]) { //for#10

      response.write("""        <li>"""); //#11

      response.write(nnstr(name)); //#11


      response.write("""
</li>
"""); //#11
    } //for

    response.write("""
      </ol>
    </li>
"""); //#13
  } //for

  response.write("""
</ul>
"""); //#16

  if (footer != null) { //if#17

    response.write("""  """); //#18

    response.write(nnstr(footer)); //#18


    response.write("""

"""); //#18
  } //if

  connect.close();
}
