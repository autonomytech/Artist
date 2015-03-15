var ready;
ready = function(){
   
   $('#calendar').fullCalendar({
    
	 	dayClick: function(date) {
            window.location.replace('/events/new?date='+ date.format());
    	},
        events: '/events.json',
        eventMouseover: function(calEvent, jsEvent) {
            var tooltip = '<div class="ibox float-e-margins"><div class="ibox-title"><h5>'+ calEvent.title +'</h5></div><div class="ibox-content">'+ calEvent.description +'</div></div>';
            $(this).mouseover(function(e) {
                $('.event').html(tooltip);
            }).mousemove(function(e) {
                $('.event').html(tooltip);
            });
        },
        eventMouseout: function(calEvent, jsEvent) {
            $('.event').html('');
        }
	});
};
$(document).ready(ready);
$(document).on('page:load',ready);
