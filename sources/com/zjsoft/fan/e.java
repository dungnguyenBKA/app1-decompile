package com.zjsoft.fan;

import android.app.Activity;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import defpackage.ub0;
import photoeditor.cutout.backgrounderaser.R;

public class e extends xb0 {
    public float b = 0.5233333f;
    public float c;
    public float d = 48.0f;
    jb0 e;
    NativeAd f;
    int g = R.layout.ad_native_card;
    String h;
    String i;
    boolean j;

    class a implements NativeAdListener {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        a(Activity activity, ub0.a aVar) {
            this.a = activity;
            this.b = aVar;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            fc0.a().b(this.a, "FanNativeCard:onAdClicked");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.c(this.a);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:28:0x015f A[Catch:{ all -> 0x0186 }] */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x0164 A[Catch:{ all -> 0x0186 }] */
        /* JADX WARNING: Removed duplicated region for block: B:32:0x0169 A[Catch:{ all -> 0x0186 }] */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x016e A[Catch:{ all -> 0x0186 }] */
        /* JADX WARNING: Removed duplicated region for block: B:35:0x0172 A[Catch:{ all -> 0x0186 }] */
        /* JADX WARNING: Removed duplicated region for block: B:37:0x0177 A[Catch:{ all -> 0x0186 }] */
        /* JADX WARNING: Removed duplicated region for block: B:38:0x017b A[Catch:{ all -> 0x0186 }] */
        @Override // com.facebook.ads.AdListener
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onAdLoaded(com.facebook.ads.Ad r15) {
            /*
            // Method dump skipped, instructions count: 434
            */
            throw new UnsupportedOperationException("Method not decompiled: com.zjsoft.fan.e.a.onAdLoaded(com.facebook.ads.Ad):void");
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            fc0 a2 = fc0.a();
            Activity activity = this.a;
            StringBuilder q = ic.q("FanNativeCard:onError errorCode:");
            q.append(adError.getErrorCode());
            a2.b(activity, q.toString());
            ub0.a aVar = this.b;
            if (aVar != null) {
                Activity activity2 = this.a;
                StringBuilder q2 = ic.q("FanNativeCard:onError, errorCode: ");
                q2.append(adError.getErrorCode());
                aVar.d(activity2, new kb0(q2.toString()));
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
            fc0.a().b(this.a, "FanNativeCard:onLoggingImpression");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.e(this.a);
            }
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(Ad ad) {
        }
    }

    @Override // defpackage.ub0
    public synchronized void a(Activity activity) {
        try {
            NativeAd nativeAd = this.f;
            if (nativeAd != null) {
                nativeAd.destroy();
                this.f = null;
            }
        } catch (Throwable th) {
            fc0.a().c(activity, th);
        }
        return;
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("FanNativeCard@");
        q.append(c(this.i));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "FanNativeCard:load");
        if (activity == null || lb0.a() == null || aVar == null) {
            if (aVar != null) {
                ic.t("FanNativeCard:Please check params is right.", aVar, activity);
                return;
            }
            throw new IllegalArgumentException("FanNativeCard:Please check MediationListener is right.");
        } else if (!a.a(activity)) {
            ic.t("FanNativeCard:Facebook client not install.", aVar, activity);
        } else {
            try {
                this.c = (float) activity.getResources().getDisplayMetrics().widthPixels;
                jb0 a2 = lb0.a();
                this.e = a2;
                if (a2.b() != null) {
                    this.g = this.e.b().getInt("layout_id", R.layout.ad_native_card);
                    this.c = this.e.b().getFloat("cover_width", this.c);
                    this.d = this.e.b().getFloat("icon_size", this.d);
                    this.h = this.e.b().getString("no_click_area", "[\"title\",\"des\",\"icon\",\"cover\"]");
                    boolean z = this.e.b().getBoolean("ad_for_child");
                    this.j = z;
                    if (z) {
                        aVar.d(activity, new kb0("FanNativeCard:Facebook only serve users at least 13 years old."));
                        return;
                    }
                }
                this.i = this.e.a();
                NativeAd nativeAd = new NativeAd(activity.getApplicationContext(), this.e.a());
                this.f = nativeAd;
                nativeAd.loadAd(nativeAd.buildLoadAdConfig().withAdListener(new a(activity, aVar)).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).build());
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        }
    }
}
