package com.zjsoft.fan;

import android.app.Activity;
import android.content.Context;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import defpackage.ub0;

public class b extends vb0 {
    AdView b = null;
    jb0 c;
    String d;
    boolean e;

    class a implements AdListener {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        a(Activity activity, ub0.a aVar) {
            this.a = activity;
            this.b = aVar;
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            fc0.a().b(this.a, "FanBanner:onAdClicked");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.c(this.a);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            fc0.a().b(this.a, "FanBanner:onAdLoaded");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.a(this.a, b.this.b);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            fc0 a2 = fc0.a();
            Activity activity = this.a;
            StringBuilder q = ic.q("FanBanner:onError errorCode:");
            q.append(adError.getErrorCode());
            a2.b(activity, q.toString());
            ub0.a aVar = this.b;
            if (aVar != null) {
                Activity activity2 = this.a;
                StringBuilder q2 = ic.q("FanBanner:onError, errorCode: ");
                q2.append(adError.getErrorCode());
                aVar.d(activity2, new kb0(q2.toString()));
            }
            try {
                AdView adView = b.this.b;
                if (adView != null) {
                    adView.destroy();
                }
                if (ad != null) {
                    ad.destroy();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(Ad ad) {
            fc0.a().b(this.a, "FanBanner:onLoggingImpression");
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.e(this.a);
            }
        }
    }

    @Override // defpackage.ub0
    public void a(Activity activity) {
        try {
            AdView adView = this.b;
            if (adView != null) {
                adView.destroy();
                this.b = null;
            }
            fc0.a().b(activity, "FanBanner:destroy");
        } catch (Throwable th) {
            fc0.a().c(activity, th);
        }
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("FanBanner@");
        q.append(c(this.d));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        AdSize adSize;
        fc0.a().b(activity, "FanBanner:load");
        if (activity == null || lb0.a() == null || aVar == null) {
            if (aVar != null) {
                ic.t("FanBanner:Please check params is right.", aVar, activity);
                return;
            }
            throw new IllegalArgumentException("FanBanner:Please check MediationListener is right.");
        } else if (!a.a(activity)) {
            ic.t("FanBanner:Facebook client not install.", aVar, activity);
        } else {
            jb0 a2 = lb0.a();
            this.c = a2;
            try {
                this.d = a2.a();
                if (this.c.b() != null) {
                    boolean z = this.c.b().getBoolean("ad_for_child");
                    this.e = z;
                    if (z) {
                        aVar.d(activity, new kb0("FanBanner:Facebook only serve users at least 13 years old."));
                        return;
                    }
                }
                Context applicationContext = activity.getApplicationContext();
                String a3 = this.c.a();
                int i = activity.getApplicationContext().getResources().getConfiguration().screenLayout & 15;
                if (i != 4) {
                    if (i != 3) {
                        adSize = AdSize.BANNER_HEIGHT_50;
                        AdView adView = new AdView(applicationContext, a3, adSize);
                        this.b = adView;
                        adView.loadAd(adView.buildLoadAdConfig().withAdListener(new a(activity, aVar)).build());
                    }
                }
                adSize = AdSize.BANNER_HEIGHT_90;
                AdView adView2 = new AdView(applicationContext, a3, adSize);
                this.b = adView2;
                adView2.loadAd(adView2.buildLoadAdConfig().withAdListener(new a(activity, aVar)).build());
            } catch (Throwable th) {
                aVar.d(activity, new kb0("FanBanner:load exception, please check log"));
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
