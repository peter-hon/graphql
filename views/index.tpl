<!DOCTYPE html>

<html>
<head>
  <title>Beego</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>

<body>
  <header>
    <textarea id="input" rows="4" cols="50" >
    </textarea>
  </header>
  <button type="button" onclick="submit_request()">Query</button>
  <footer>
    <textarea id="output" rows="20" cols="50">
    </textarea>
  </footer>
  <div class="backdrop"></div>

  <script>
  function submit_request() {
  query = JSON.stringify("mutation {unfollow(follower:1, followee:2)}");
  console.log(query);
  $.post({
                url: 'http://localhost:8080/graphql',
                data: $('textarea#input').val(),
                success: function( data, textStatus, jQxhr ){
                    $('textarea#output').val(JSON.stringify(data));
                }
            });
          }
  </script>
</body>
</html>
