function buildHTML(event){
    if(event.status == true){
      var event_name =`
      <div id = "event_card" class="card position_card" style="width: 20rem;">
          <img src = ${event.image.url}  class="rcard-img-top" width="300" height="250">
          <div class="card-body">
          <p class="card-text">${event.eventmonth}月${event.eventday}日</p>
          <span class="card-title"> ${event.name } </span>
          <a href="#" class="btn btn-primary">イベント詳細</a></div>
          </div>
          `
    $(".each_wrapper").append(event_name);
    }else{
    var str = `${event.image.url}`.toString().split('/')[5]
    var image_in_app = `/images/${str}`
    var event_name =`<div id = "event_card" class="card position_card" style="width: 20rem;">
          <img src = ${image_in_app}  class="rcard-img-top" width="300" height="250">
          <div class="card-body">
          <p class="card-text">${event.eventmonth}月${event.eventday}日</p>
          <span class="card-title"> ${event.name } </span>
          <a href="#" class="btn btn-primary">イベント詳細</a></div></div>`
     $(".each_wrapper").append(event_name);
    }
  };

$(function() {
  $(".search__query").on("keyup", function(e) {
    e.preventDefault();
    var input = $(".search__query").val();
    if(input == ('')){
      $('#event_search_result').find('p').remove();
      }else{
    $.ajax({
      type: 'GET',
      url: '/events/search',
      data: { keyword: input },
      dataType: 'json'
    })
  .done(function(data) {
     $(".each_wrapper").empty();
     $(data).each(function(i, event){
          buildHTML(event);
      });
     })
    }
  });
});

$(function() {
$("#datepicker").on("change", function(e) {
  e.preventDefault();
  var day_input = $("#datepicker").val();
  $.ajax({
      type: 'GET',
      url: '/events/search',
      data: { date: day_input },
      dataType: 'json'
    })
  .done(function(data) {
     $(".each_wrapper").empty();
     $(data).each(function(i, event){
          buildHTML(event);
      });
    })
  });
});

