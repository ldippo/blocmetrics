// track a client-side event using the Blocmetrics analytics service
window.blocmetrics = {};
blocmetrics.track = function(event) {
  var _bm_request = new XMLHttpRequest();
  _bm_request.open("POST", "http://127.0.0.1:3000/events", true);
  _bm_request.setRequestHeader('Content-Type', 'application/json');
  _bm_request.onreadystatechange = function() {

  };
  _bm_request.send(JSON.stringify(event));
}
