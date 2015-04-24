var ready;
ready = function(){
   
   $('#calendar').fullCalendar({
    
	 	dayClick: function(date) {
            var a = {date: date.format()};
            $.get('/events/new',a,function(response){
            });
    	},
        events: '/events.json',
        eventMouseover: function(calEvent, jsEvent) {
            var tooltip = '<div class="ibox float-e-margins"><div class="ibox-title"><h5>'+ calEvent.title +'</h5><div class="ibox-tools">'+ calEvent.is_publish +'</div></div><div class="ibox-content">'+'<b>'+ calEvent.artist +'</b><br/>'+ calEvent.s_date +' to '+ calEvent.e_date +'<br/>'+ calEvent.s_time +' to '+ calEvent.e_time +'<br/><br/>'+ calEvent.description +'</div></div>';
            $(this).mouseover(function(e) {
                $('.event').html(tooltip);
            }).mousemove(function(e) {
                $('.event').html(tooltip);
            });
        },
        eventMouseout: function(calEvent, jsEvent) {
            $('.event').html('');
        },
        eventClick: function(event) {
           $.ajax({
              url: "/events/" + event.id +"/edit"
            });
        }
	});
};
$(document).ready(ready);
$(document).on('page:load',ready);
