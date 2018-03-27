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

	var placemark = new ymaps.Placemark([54, 38], {}, {
	// Задаем стиль метки (метка в виде круга).
	preset: "islands#dotCircleIcon",
	// Задаем цвет метки (в формате RGB).
	iconColor: '#0000ff'
});
	map.geoObjects.add(placemark);
	var placemark1 = new ymaps.Placemark([54, 38.5], {}, {
		// Задаем стиль метки (метка в виде круга).
		preset: "islands#dotCircleIcon",
		// Задаем цвет метки (в формате RGB).
		iconColor: '#ff0000'
		});

	map.geoObjects.add(placemark1);
}).fail(console.error, console);

