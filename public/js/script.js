$(document).ready(function(){
    $(document).keypress(function(e){
        switch(e.charCode){
          case 119:
            Envia('R');
            break;
          case 100:
            Envia('D');
            break;
          case 97:
            Envia('E');
            break;
        }
    })
    $('.btn').click(function() {
        Envia($(this).text())
    })
});

function Envia(command) {
  $.ajax({
      url: '/envia',
      type: 'POST',
      data: { cmd: command },
      error: function(){},
      success: function() {}
  })
}

