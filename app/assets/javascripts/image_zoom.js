$(function() {
  var $section = $('#focal');
      $section.find('.panzoom').panzoom({
        $zoomRange: $section.find(".zoom-range"),
        $reset: $section.find(".reset")
      });
  var $panzoom = $section.find('.panzoom').panzoom();
  $panzoom.parent().on('mousewheel.focal', function( e ) {
    e.preventDefault();
    var delta = e.delta || e.originalEvent.wheelDelta;
    var zoomOut = delta ? delta < 0 : e.originalEvent.deltaY > 0;
    $panzoom.panzoom('zoom', zoomOut, {
      increment: 0.1,
      animate: false,
      focal: e
    });
  });
});
