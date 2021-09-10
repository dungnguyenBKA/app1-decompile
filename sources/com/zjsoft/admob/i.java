package com.zjsoft.admob;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import defpackage.ub0;
import photoeditor.cutout.backgrounderaser.R;

class i implements NativeAd.OnNativeAdLoadedListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ g b;

    i(g gVar, Activity activity) {
        this.b = gVar;
        this.a = activity;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
    public void onNativeAdLoaded(NativeAd nativeAd) {
        View view;
        this.b.f = nativeAd;
        fc0.a().b(this.a, "AdmobNativeBanner:onNativeAdLoaded");
        g gVar = this.b;
        Activity activity = this.a;
        int i = gVar.i;
        NativeAd nativeAd2 = gVar.f;
        synchronized (gVar) {
            view = null;
            try {
                View inflate = LayoutInflater.from(activity).inflate(i, (ViewGroup) null);
                if (nativeAd2 != null) {
                    if (!cc0.v(activity, nativeAd2.getHeadline() + " " + nativeAd2.getBody())) {
                        NativeAdView nativeAdView = new NativeAdView(activity.getApplicationContext());
                        nativeAdView.addView(inflate, new ViewGroup.LayoutParams(-1, -2));
                        nativeAdView.setHeadlineView(inflate.findViewById(R.id.c0));
                        nativeAdView.setBodyView(inflate.findViewById(R.id.bk));
                        nativeAdView.setCallToActionView(inflate.findViewById(R.id.b6));
                        nativeAdView.setIconView(inflate.findViewById(R.id.br));
                        ((TextView) nativeAdView.getHeadlineView()).setText(nativeAd2.getHeadline());
                        ((TextView) nativeAdView.getBodyView()).setText(nativeAd2.getBody());
                        ((TextView) nativeAdView.getCallToActionView()).setText(nativeAd2.getCallToAction());
                        NativeAd.Image icon = nativeAd2.getIcon();
                        if (icon != null) {
                            ((ImageView) nativeAdView.getIconView()).setImageDrawable(icon.getDrawable());
                        } else {
                            ((ImageView) nativeAdView.getIconView()).setVisibility(8);
                        }
                        nativeAdView.setNativeAd(nativeAd2);
                        View inflate2 = LayoutInflater.from(activity).inflate(gVar.j, (ViewGroup) null);
                        ((LinearLayout) inflate2.findViewById(R.id.by)).addView(nativeAdView);
                        view = inflate2;
                    }
                }
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        }
        ub0.a aVar = this.b.h;
        if (aVar == null) {
            return;
        }
        if (view != null) {
            aVar.a(this.a, view);
            return;
        } else {
            ic.t("AdmobNativeBanner:getAdView failed", aVar, this.a);
            return;
        }
    }
}
