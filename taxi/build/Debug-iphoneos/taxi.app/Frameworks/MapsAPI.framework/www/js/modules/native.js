ymaps.modules.define('native', [
    'map.metaOptions',
    'tileCache',
    'control.TypeSelector',
    'control.ZoomControl',
    'control.GeolocationControl'
], function (provide, metaOptions, tileCache, TypeSelector, ZoomControl, GeolocationControl) {
    metaOptions.set(buildMetaOptions());

    tileCache.setup(3 * 24 * 60 * 60 * 1e3); // 3 days

    provide({
        controls: buildControls()
    });

    function buildMetaOptions () {
        return {
            layerTilePositionEngine: 'css3-3d',
            dragInertiaDuration: 'auto',
            layerTileAnimateOpacity: false,
            avoidFractionalZoom: false,
            layerWebglEnabled: false,
            groundPaneViewportMargin: 600
        };
    }

    function buildControls () {
        return [new TypeSelector({
            options: {
                layout: 'round#listBoxLayout',
                itemLayout: 'round#listBoxItemLayout',
                itemSelectableLayout: 'round#listBoxItemSelectableLayout',
                position: {
                    right: 20,
                    bottom: 326
                }
            }
        }), new GeolocationControl({
            options: {
                layout: 'round#buttonLayout',
                position: {
                    right: 20,
                    bottom: 150
                }
            }
        }), new ZoomControl({
            options: {
                layout: 'round#zoomLayout',
                position: {
                    right: 20,
                    bottom: 216
                }
            }
        })];
    }
});