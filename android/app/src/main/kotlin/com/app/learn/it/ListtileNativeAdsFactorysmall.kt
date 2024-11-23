package com.app.learn.it

import android.content.Context
import android.view.LayoutInflater
import android.widget.*
import androidx.cardview.widget.CardView
import com.app.learn.it.R
import com.google.android.gms.ads.nativead.NativeAd
import com.google.android.gms.ads.nativead.NativeAdView
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin

class ListTileNativeAdsmallFactory(val context: Context) : GoogleMobileAdsPlugin.NativeAdFactory {

    override fun createNativeAd(
        nativeAd: NativeAd,
        customOptions: MutableMap<String, Any>?
    ): NativeAdView {
        val nativeAdView = LayoutInflater.from(context)
            .inflate(R.layout.list_tile_native_adsmall, null) as NativeAdView

        with(nativeAdView) {

            val iconView = findViewById<ImageView>(R.id.iv_list_tile_native_adsmall_icon)
            val icon = nativeAd.icon
            if (icon != null) {
                iconView.setImageDrawable(icon.drawable)
            }
            this.iconView = iconView

            val headlineView = findViewById<TextView>(R.id.tv_list_tile_native_adsmall_headline)
            headlineView.text = nativeAd.headline
            this.headlineView = headlineView

            val starRatingView = findViewById<RatingBar>(R.id.ad_stars)
            if (nativeAd.starRating == null)
            {
                starRatingView.rating = 0.0F
                this.starRatingView = starRatingView
            }
            else{
                starRatingView.rating = nativeAd.starRating!!.toFloat()
                this.starRatingView = starRatingView
            }

            val buttonView = findViewById<Button>(R.id.tv_list_tile_native_ads_button)
            buttonView.text = nativeAd.callToAction
            this.callToActionView = buttonView


            setNativeAd(nativeAd)
        }

        return nativeAdView
    }
}
