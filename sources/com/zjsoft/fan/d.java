package com.zjsoft.fan;

import android.app.Activity;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import defpackage.ub0;
import photoeditor.cutout.backgrounderaser.R;

public class d extends vb0 {
    public float b = -1.0f;
    jb0 c;
    NativeBannerAd d;
    int e = R.layout.ac;
    int f = R.layout.ad;
    String g;
    String h;
    boolean i;

    class a implements NativeAdListener {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        a(Activity activity, ub0.a aVar) {
            this.a = activity;
            this.b = aVar;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            fc0.a().b(this.a, "FanNativeBanner:onAdClicked");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.c(this.a);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:38:0x0172, code lost:
            r1 = r19;
            r3 = r0;
         */
        @Override // com.facebook.ads.AdListener
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onAdLoaded(com.facebook.ads.Ad r20) {
            /*
            // Method dump skipped, instructions count: 424
            */
            throw new UnsupportedOperationException("Method not decompiled: com.zjsoft.fan.d.a.onAdLoaded(com.facebook.ads.Ad):void");
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            fc0 a2 = fc0.a();
            Activity activity = this.a;
            StringBuilder q = ic.q("FanNativeBanner:onError errorCode:");
            q.append(adError.getErrorCode());
            a2.b(activity, q.toString());
            ub0.a aVar = this.b;
            if (aVar != null) {
                Activity activity2 = this.a;
                StringBuilder q2 = ic.q("FanNativeBanner:onError, errorCode: ");
                q2.append(adError.getErrorCode());
                aVar.d(activity2, new kb0(q2.toString()));
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
            fc0.a().b(this.a, "FanNativeBanner:onLoggingImpression");
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
            NativeBannerAd nativeBannerAd = this.d;
            if (nativeBannerAd != null) {
                nativeBannerAd.destroy();
                this.d = null;
            }
        } catch (Throwable th) {
            fc0.a().c(activity, th);
        }
        return;
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("FanNativeBanner@");
        q.append(c(this.h));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "FanNativeBanner:load");
        if (activity == null || lb0.a() == null || aVar == null) {
            if (aVar != null) {
                ic.t("FanNativeBanner:Please check params is right.", aVar, activity);
                return;
            }
            throw new IllegalArgumentException("FanNativeBanner:Please check MediationListener is right.");
        } else if (!a.a(activity)) {
            ic.t("FanNativeBanner:Facebook client not install.", aVar, activity);
        } else {
            try {
                jb0 a2 = lb0.a();
                this.c = a2;
                if (a2.b() != null) {
                    this.e = this.c.b().getInt("layout_id", R.layout.ac);
                    this.f = this.c.b().getInt("root_layout_id", R.layout.ad);
                    this.b = this.c.b().getFloat("icon_size", -1.0f);
                    this.g = this.c.b().getString("no_click_area", "[\"title\",\"des\",\"icon\"]");
                    boolean z = this.c.b().getBoolean("ad_for_child");
                    this.i = z;
                    if (z) {
                        aVar.d(activity, new kb0("FanNativeBanner:Facebook only serve users at least 13 years old."));
                        return;
                    }
                }
                this.h = this.c.a();
                NativeBannerAd nativeBannerAd = new NativeBannerAd(activity.getApplicationContext(), this.c.a());
                this.d = nativeBannerAd;
                nativeBannerAd.loadAd(nativeBannerAd.buildLoadAdConfig().withAdListener(new a(activity, aVar)).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).build());
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        }
    }

    @Override // defpackage.vb0
    public void j() {
    }

    @Override // defpackage.vb0
    public void k() {
    }
}
