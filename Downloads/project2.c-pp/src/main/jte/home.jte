@param String userName
@param java.util.List<String> categories
@param java.util.List<String> products

@template.content(content = @`
  <h2>Hello, ${userName}!</h2>

  @if(userName.equals("Yaloys"))
    <p>💎Special discounts for you!</p>
  @else
    <p>Sign up to get a bonus!</p>
    }
  @endif
  <p>There are ${products.size()} products in stock!</p>

  <h3>Categories:</h3>
  <ul>
    @for(String category : categories)
      <li>${category}</li>
    @endfor
  </ul>

  <h3>Products:</h3>
  <ul>
    @for(String product : products)
      <li>${product}</li>
    @endfor
  </ul>
`)
