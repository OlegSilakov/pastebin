$(document).ready(function() {
  var client = new ZeroClipboard($("#d_clip_button"))

  client.on( 'load', function(client) {
 
    client.on( 'datarequested', function(client) {
      var text = $('#clipboard_text').text();
      client.setText(text);
    });
 
    // callback triggered on successful copying
    client.on( 'complete', function(client, args) {
      console.log("Text copied to clipboard: \n" + args.text );
    });
  });
});