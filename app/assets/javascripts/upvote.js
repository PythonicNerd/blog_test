$(document).ready(function(){
  //alert("IO")

  $('#like').click(function(){

    var id = $(this).attr('post_id');
    console.log(id)

     $.ajax({
       url: "/posts/" + id + '/like',
      dataType: "JSON",
     type: "POST",
     error: function (xhr, ajaxOptions, thrownError) {
           alert(xhr.responseText)
       },

      success: function(){
        alert("Success")
      }

  })


})
})
