package com.app.learn.it

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import com.google.android.gms.ads.nativead.MediaView
import com.google.android.gms.ads.nativead.NativeAd
import com.google.android.gms.ads.nativead.NativeAdView
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin

class ListTileNativeAdFactorysmall(val context: Context) : GoogleMobileAdsPlugin.NativeAdFactory {

    override fun createNativeAd(
        nativeAd: NativeAd,
        customOptions: MutableMap<String, Any>?
    ): NativeAdView {
        val nativeAdView = LayoutInflater.from(context)
            .inflate(R.layout.list_tile_native_adssmall, null) as NativeAdView

        with(nativeAdView) {
            val attributionViewSmall =
                findViewById<TextView>(R.id.tv_list_tile_native_adssmall_attribution_small)

//            val iconView = findViewById<ImageView>(R.id.tv_list_tile_native_adssmall_icon)
//            val icon = nativeAd.icon
//            if (icon != null) {
//                attributionViewSmall.visibility = View.VISIBLE
//                iconView.setImageDrawable(icon.drawable)
//            } else {
//                attributionViewSmall.visibility = View.INVISIBLE
//            }
//            this.iconView = iconView

            var mediaView = findViewById<MediaView>(R.id.tv_list_tile_native_adssmall_media)
            this.mediaView = mediaView

            val headlineView = findViewById<TextView>(R.id.tv_list_tile_native_adssmall_headline)
            headlineView.text = nativeAd.headline
            this.headlineView = headlineView

            val buttonView = findViewById<Button>(R.id.tv_list_tile_native_adssmall_button)
            buttonView.text = nativeAd.callToAction
            this.callToActionView = buttonView

            val bodyView = findViewById<TextView>(R.id.tv_list_tile_native_adssmall_body)
            with(bodyView) {
                text = nativeAd.body
            }
            this.bodyView = bodyView

            setNativeAd(nativeAd)
        }

        return nativeAdView
    }
}




