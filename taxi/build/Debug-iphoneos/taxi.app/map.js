ymaps.ready(init);

function init() {
    var geolocation = ymaps.geolocation,
    myMap = new ymaps.Map('map', {
                          center: [55, 34],
                          zoom: 9,
                          // Добавим панель маршрутизации.
                          controls: ['routePanelControl']
                          },{
                          searchControlProvider: 'yandex#search'
                          });
//            var myMap = new ymaps.Map('map', {
//                                      center: [55.753994, 37.622093],
//                                      zoom: 9,
//                                      // Добавим панель маршрутизации.
//                                      controls: ['routePanelControl']
//                                      });
    //местоположение полученное через браузер
    geolocation.get({
                    provider: 'browser',
                    mapStateAutoApply: true
                    }).then(function (result) {
                            result.geoObjects.options.set('preset', 'islands#blueCircleIcon');
                            result.geoObjects.get(0).properties.set({
                                balloonContentBody: 'Мое местоположение'
                            });
                            myMap.geoObjects.add(result.geoObjects);
                            
                            });
            var control = myMap.controls.get('routePanelControl');
            
            // Зададим состояние панели для построения машрутов.
            control.routePanel.state.set({
                                         // Тип маршрутизации.
                                         type: 'masstransit',
                                         // Выключим возможность задавать пункт отправления в поле ввода.
                                         fromEnabled: true,
                                         // Адрес или координаты пункта отправления.
                                         //from: '',
                                         // Включим возможность задавать пункт назначения в поле ввода.
                                         toEnabled: true
                                         // Адрес или координаты пункта назначения.
                                         //to: 'Петербург'
                                         });
            
            // Зададим опции панели для построения машрутов.
            control.routePanel.options.set({
                                           // Запрещаем показ кнопки, позволяющей менять местами начальную и конечную точки маршрута.
                                           allowSwitch: true,
                                           // Включим определение адреса по координатам клика.
                                           // Адрес будет автоматически подставляться в поле ввода на панели, а также в подпись метки маршрута.
                                           reverseGeocoding: true,
                                           // Зададим виды маршрутизации, которые будут доступны пользователям для выбора.
                                           types: { masstransit: true, pedestrian: true }
                                           });
            
            // Создаем кнопку, с помощью которой пользователи смогут менять местами начальную и конечную точки маршрута.
            var switchPointsButton = new ymaps.control.Button({
                                                            data: {content: "",
                                                              image: 'map.png',
                                                              title: "Поменять точки местами"},
                                                              options: {selectOnClick: false, maxWidth: 160}
                                                              });
            // Объявляем обработчик для кнопки.
            switchPointsButton.events.add('click', function () {
                                          // Меняет местами начальную и конечную точки маршрута.
                                          control.routePanel.switchPoints();
                                          });
            //myMap.controls.add(switchPointsButton);
            
            
            /*
             * Макет кнопки должен отображать поле data.content
             * и изменяться в зависимости от того, нажата ли кнопка или нет.
             * Текущий размер (small, medium, large) рассчитывается исходя из значения опции maxWidth
             * @see https://api.yandex.ru/maps/doc/jsapi/2.1/ref/reference/control.Button.xml#param-parameters
             */
            ButtonLayout = ymaps.templateLayoutFactory.createClass([
                                                                    '<div title="{{ data.title }}" class="my-button ',
                                                                    '{% if state.size == "small" %}my-button_small{% endif %}',
                                                                    '{% if state.size == "medium" %}my-button_medium{% endif %}',
                                                                    '{% if state.size == "large" %}my-button_large{% endif %}',
                                                                    '{% if state.selected %} my-button-selected{% endif %}">',
                                                                    '<img class="my-button__img" src="{{ data.image }}" alt="{{ data.title }}">',
                                                                    '<span class="my-button__text">{{ data.content }}</span>',
                                                                    '</div>'
                                                                    ].join('')),
            
            button = new ymaps.control.Button({
                                              data: {
                                              content: "поменять",
                                              //image: 'map.png',
                                              title: "123"
                                              },
                                              options: {
                                              layout: ButtonLayout,
                                              maxWidth: [170, 190, 220]
                                              }
                                              });
            
//            myMap.controls.add(button, {
//                               right: 10,
//                               top: 10
//                               });
    
}
