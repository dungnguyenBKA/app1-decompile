package com.zjsoft.admob;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import defpackage.ub0;
import photoeditor.cutout.backgrounderaser.R;

class j implements NativeAppInstallAd.OnAppInstallAdLoadedListener {
    final /* synthetic */ Activity b;
    final /* synthetic */ g c;

    j(g gVar, Activity activity) {
        this.c = gVar;
        this.b = activity;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
    public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
        View view;
        this.c.g = nativeAppInstallAd;
        fc0.a().b(this.b, "AdmobNativeBanner:onAppInstallAdLoaded");
        g gVar = this.c;
        Activity activity = this.b;
        int i = gVar.i;
        NativeAppInstallAd nativeAppInstallAd2 = gVar.g;
        synchronized (gVar) {
            view = null;
            try {
                View inflate = LayoutInflater.from(activity).inflate(i, (ViewGroup) null);
                if (nativeAppInstallAd2 != null) {
                    if (!cc0.v(activity, ((Object) nativeAppInstallAd2.getHeadline()) + " " + ((Object) nativeAppInstallAd2.getBody()))) {
                        NativeAppInstallAdView nativeAppInstallAdView = new NativeAppInstallAdView(activity.getApplicationContext());
                        nativeAppInstallAdView.addView(inflate, new ViewGroup.LayoutParams(-1, -2));
                        nativeAppInstallAdView.setHeadlineView(inflate.findViewById(R.id.c0));
                        nativeAppInstallAdView.setBodyView(inflate.findViewById(R.id.bk));
                        nativeAppInstallAdView.setCallToActionView(inflate.findViewById(R.id.b6));
                        nativeAppInstallAdView.setIconView(inflate.findViewById(R.id.br));
                        ((TextView) nativeAppInstallAdView.getHeadlineView()).setText(nativeAppInstallAd2.getHeadline());
                        ((TextView) nativeAppInstallAdView.getBodyView()).setText(nativeAppInstallAd2.getBody());
                        ((TextView) nativeAppInstallAdView.getCallToActionView()).setText(nativeAppInstallAd2.getCallToAction());
                        NativeAd.Image icon = nativeAppInstallAd2.getIcon();
                        if (icon != null) {
                            ((ImageView) nativeAppInstallAdView.getIconView()).setImageDrawable(icon.getDrawable());
                        } else {
                            ((ImageView) nativeAppInstallAdView.getIconView()).setVisibility(8);
                        }
                        nativeAppInstallAdView.setNativeAd(nativeAppInstallAd2);
                        View inflate2 = LayoutInflater.from(activity).inflate(gVar.j, (ViewGroup) null);
                        ((LinearLayout) inflate2.findViewById(R.id.by)).addView(nativeAppInstallAdView);
                        view = inflate2;
                    }
                }
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        }
        ub0.a aVar = this.c.h;
        if (aVar == null) {
            return;
        }
        if (view != null) {
            aVar.a(this.b, view);
            return;
        } else {
            ic.t("AdmobNativeBanner:getAdView failed", aVar, this.b);
            return;
        }
    }
}
