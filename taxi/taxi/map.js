ymaps.ready(['native']).then(function (ymaps) {

    var map = new ymaps.Map('map', {
        center: [55.7452, 37.5867],
        zoom: 12,
        controls: ymaps.native.controls
}),

    geoObject = new ymaps.Placemark(map.getCenter(), {
        iconContent: 'Go here',
        balloonContent: 'blablabla'
    }, {
    preset: 'islands#redStretchyIcon'
    });

ymaps.route(['Москва', 'Санкт-Петербург']).then(
function (route) {
myMap.geoObjects.add(route);
},
function (error) {
alert('Возникла ошибка: ' + error.message);
}
);

    map.geoObjects.add(geoObject);

}).fail(console.error, console);


