package com.app.learn.it

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // TODO: Register the ListTileNativeAdFactory
        GoogleMobileAdsPlugin.registerNativeAdFactory(
            flutterEngine, "listTile", ListTileNativeAdFactory(context))

        GoogleMobileAdsPlugin.registerNativeAdFactory(
            flutterEngine, "listTilesmall", ListTileNativeAdsmallFactory(context))

        GoogleMobileAdsPlugin.registerNativeAdFactory(
            flutterEngine, "listTilebig", ListTileNativeAdFactorybig(context))

        GoogleMobileAdsPlugin.registerNativeAdFactory(
            flutterEngine, "listTilessmall", ListTileNativeAdFactorysmall(context))
    }

    override fun cleanUpFlutterEngine(flutterEngine: FlutterEngine) {
        super.cleanUpFlutterEngine(flutterEngine)

        // TODO: Unregister the ListTileNativeAdFactory
        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "listTile")

        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "listTilesmall")

        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "listTilebig")

        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "listTilessmall")
    }
}
