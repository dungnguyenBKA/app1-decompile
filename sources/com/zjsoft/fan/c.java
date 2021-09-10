package com.zjsoft.fan;

import android.app.Activity;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import defpackage.dc0;
import defpackage.ub0;
import defpackage.wb0;

public class c extends wb0 {
    InterstitialAd c;
    jb0 d;
    String e = "";
    dc0 f = null;
    String g;
    boolean h;

    class a implements dc0.b {
        final /* synthetic */ wb0.a a;

        a(wb0.a aVar) {
            this.a = aVar;
        }

        @Override // defpackage.dc0.b
        public void a() {
            c.this.p(this.a);
        }
    }

    class b implements InterstitialAdListener {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        b(Activity activity, ub0.a aVar) {
            this.a = activity;
            this.b = aVar;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            fc0.a().b(this.a, "FanInterstitial:onAdClicked");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.c(this.a);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            fc0.a().b(this.a, "FanInterstitial:onAdLoaded");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.a(this.a, null);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            fc0 a2 = fc0.a();
            Activity activity = this.a;
            StringBuilder q = ic.q("FanInterstitial:onError errorCode:");
            q.append(adError.getErrorCode());
            a2.b(activity, q.toString());
            ub0.a aVar = this.b;
            if (aVar != null) {
                Activity activity2 = this.a;
                StringBuilder q2 = ic.q("FanInterstitial:onError errorCode:");
                q2.append(adError.getErrorCode());
                aVar.d(activity2, new kb0(q2.toString()));
            }
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDismissed(Ad ad) {
            fc0.a().b(this.a, "FanInterstitial:onInterstitialDismissed");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.b(this.a);
            }
            c.this.o();
        }

        @Override // com.facebook.ads.InterstitialAdListener
        public void onInterstitialDisplayed(Ad ad) {
            fc0.a().b(this.a, "FanInterstitial:onInterstitialDisplayed");
            c.this.o();
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
            fc0.a().b(this.a, "FanInterstitial:onLoggingImpression");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.e(this.a);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void o() {
        try {
            dc0 dc0 = this.f;
            if (dc0 != null && dc0.isShowing()) {
                this.f.dismiss();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void p(wb0.a aVar) {
        boolean z = false;
        try {
            InterstitialAd interstitialAd = this.c;
            if (interstitialAd != null && interstitialAd.isAdLoaded()) {
                z = this.c.show();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            o();
        }
        if (aVar != null) {
            aVar.a(z);
        }
    }

    @Override // defpackage.ub0
    public void a(Activity activity) {
        try {
            InterstitialAd interstitialAd = this.c;
            if (interstitialAd != null) {
                interstitialAd.destroy();
                this.c = null;
                this.f = null;
            }
            fc0.a().b(activity, "FanInterstitial:destroy");
        } catch (Throwable th) {
            fc0.a().c(activity, th);
        }
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("FanInterstitial@");
        q.append(c(this.g));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "FanInterstitial:load");
        if (activity == null || lb0.a() == null || aVar == null) {
            if (aVar != null) {
                ic.t("FanInterstitial:Please check params is right.", aVar, activity);
                return;
            }
            throw new IllegalArgumentException("FanInterstitial:Please check MediationListener is right.");
        } else if (!a.a(activity)) {
            ic.t("FanInterstitial:Facebook client not install.", aVar, activity);
        } else {
            jb0 a2 = lb0.a();
            this.d = a2;
            if (a2.b() != null) {
                this.e = this.d.b().getString("ad_position_key", "");
                boolean z = this.d.b().getBoolean("ad_for_child");
                this.h = z;
                if (z) {
                    ic.t("FanInterstitial:Facebook only serve users at least 13 years old.", aVar, activity);
                    return;
                }
            }
            try {
                this.g = this.d.a();
                InterstitialAd interstitialAd = new InterstitialAd(activity.getApplicationContext(), this.d.a());
                this.c = interstitialAd;
                interstitialAd.loadAd(interstitialAd.buildLoadAdConfig().withAdListener(new b(activity, aVar)).build());
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        }
    }

    @Override // defpackage.wb0
    public boolean k() {
        InterstitialAd interstitialAd = this.c;
        return interstitialAd != null && interstitialAd.isAdLoaded();
    }

    @Override // defpackage.wb0
    public void l(Activity activity, wb0.a aVar) {
        try {
            dc0 j = j(activity, this.e, "fan_i_loading_time", "");
            this.f = j;
            if (j != null) {
                j.b(new a(aVar));
                this.f.show();
                return;
            }
            p(aVar);
        } catch (Throwable th) {
            th.printStackTrace();
            o();
            if (aVar != null) {
                aVar.a(false);
            }
        }
    }
}
