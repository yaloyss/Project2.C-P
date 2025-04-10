@param String userName
@param java.util.List<String> categories
@param java.util.List<String> products
@template("content.jte") {
@content {
<h2>Hello, @userName!</h2>
<p>There are @products.size() products in stock!</p>

<%-- if statement --%>
@if(userName.equals("Yaloys")) {
  <p>💎Special discounts for you!</p>
  } @else {
  <p>Sign up to get a bonus!</p>
  }
@endif

<%-- loops --%>
<h3>Categories:</h3>
<ul>
  @for(String category : categories) {
    <li>@category</li>
    }
  @endfor
</ul>

<%-- template call + varargs --%>
<h3>Products:</h3>
@template("varargs.jte", "items" = products...)
}
}
