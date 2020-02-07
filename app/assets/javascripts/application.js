// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
  // about supported directives.
  //
  //= require rails-ujs
  //= require activestorage
  //= require turbolinks
  //= require_tree .

  //= require jquery_ujs
  //= require jquery3
  //= require popper
  //= require bootstrap-sprockets

  $(document).ready(function () {

    $("path, circle").hover(function(e) {
      $('#info-box').css('display','block');
      $('#info-box').html($(this).data('info'));
    });

    $("path, circle").mouseleave(function(e) {
      $('#info-box').css('display','none');
    });

    $(document).mousemove(function(e) {
      $('#info-box').css('top',e.pageY-$('#info-box').height()-30);
      $('#info-box').css('left',e.pageX-($('#info-box').width())/2);
    }).mouseover();

    $(".state-click").click(function() {
      var abbr = this.id;
      // xhttp.open("GET", "http://localhost:4567/states")
      // // var request = HTTParty.get(`http://localhost:4567/states?search=${abbr}`)
      // // request.open('GET', `http://localhost:4567/states?search=${abbr}`, true);
      // alert("got past request.open");
      // // var data = this.response;
      // alert(request);
      // var stateId = request["id"];

      window.location.replace(`http://localhost:3000/information/11`);
      // find id where our api's states where abbreviation == abbr

    });
  });
