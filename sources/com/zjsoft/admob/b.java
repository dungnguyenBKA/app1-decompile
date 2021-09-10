package com.zjsoft.admob;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import com.google.ads.consent.ConsentStatus;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import defpackage.ub0;
import java.util.Objects;

public class b extends vb0 {
    ub0.a b;
    jb0 c;
    boolean d;
    boolean e;
    AdView f;
    String g;
    String h;
    String i;
    String j;
    String k;
    String l = "";

    class a implements d {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        /* renamed from: com.zjsoft.admob.b$a$a  reason: collision with other inner class name */
        class RunnableC0087a implements Runnable {
            final /* synthetic */ boolean b;

            RunnableC0087a(boolean z) {
                this.b = z;
            }

            public void run() {
                if (this.b) {
                    a aVar = a.this;
                    b bVar = b.this;
                    b.l(bVar, aVar.a, bVar.c);
                    return;
                }
                a aVar2 = a.this;
                ub0.a aVar3 = aVar2.b;
                if (aVar3 != null) {
                    ic.t("AdmobBanner:Admob has not been inited or is initing", aVar3, aVar2.a);
                }
            }
        }

        a(Activity activity, ub0.a aVar) {
            this.a = activity;
            this.b = aVar;
        }

        @Override // com.zjsoft.admob.d
        public void a(boolean z) {
            this.a.runOnUiThread(new RunnableC0087a(z));
        }
    }

    static void l(b bVar, Activity activity, jb0 jb0) {
        Objects.requireNonNull(bVar);
        try {
            bVar.f = new AdView(activity.getApplicationContext());
            String a2 = jb0.a();
            if (!TextUtils.isEmpty(bVar.g) && cc0.C(activity, bVar.k)) {
                a2 = bVar.g;
            } else if (TextUtils.isEmpty(bVar.j) || !cc0.B(activity, bVar.k)) {
                int d2 = cc0.d(activity, bVar.k);
                if (d2 != 1) {
                    if (d2 == 2) {
                        if (!TextUtils.isEmpty(bVar.i)) {
                            a2 = bVar.i;
                        }
                    }
                } else if (!TextUtils.isEmpty(bVar.h)) {
                    a2 = bVar.h;
                }
            } else {
                a2 = bVar.j;
            }
            if (com.zjsoft.baseadlib.b.a) {
                Log.e("ad_log", "AdmobBanner:id " + a2);
            }
            bVar.l = a2;
            bVar.f.setAdUnitId(a2);
            bVar.f.setAdSize(bVar.m(activity));
            AdRequest.Builder builder = new AdRequest.Builder();
            if (cc0.l(activity) == ConsentStatus.NON_PERSONALIZED) {
                Bundle bundle = new Bundle();
                bundle.putString("npa", "1");
                builder.addNetworkExtrasBundle(AdMobAdapter.class, bundle);
            }
            bVar.f.loadAd(builder.build());
            bVar.f.setAdListener(new c(bVar, activity));
        } catch (Throwable th) {
            ub0.a aVar = bVar.b;
            if (aVar != null) {
                ic.t("AdmobBanner:load exception, please check log", aVar, activity);
            }
            fc0.a().c(activity, th);
        }
    }

    private AdSize m(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        AdSize currentOrientationAnchoredAdaptiveBannerAdSize = AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(activity, (int) (((float) displayMetrics.widthPixels) / displayMetrics.density));
        fc0 a2 = fc0.a();
        a2.b(activity, currentOrientationAnchoredAdaptiveBannerAdSize.getWidthInPixels(activity) + " # " + currentOrientationAnchoredAdaptiveBannerAdSize.getHeightInPixels(activity));
        fc0 a3 = fc0.a();
        a3.b(activity, currentOrientationAnchoredAdaptiveBannerAdSize.getWidth() + " # " + currentOrientationAnchoredAdaptiveBannerAdSize.getHeight());
        return currentOrientationAnchoredAdaptiveBannerAdSize;
    }

    @Override // defpackage.ub0
    public void a(Activity activity) {
        AdView adView = this.f;
        if (adView != null) {
            adView.setAdListener(null);
            this.f.destroy();
            this.f = null;
        }
        fc0.a().b(activity, "AdmobBanner:destroy");
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("AdmobBanner@");
        q.append(c(this.l));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "AdmobBanner:load");
        if (activity != null && lb0.a() != null && aVar != null) {
            this.b = aVar;
            jb0 a2 = lb0.a();
            this.c = a2;
            if (a2.b() != null) {
                this.d = this.c.b().getBoolean("ad_for_child");
                this.g = this.c.b().getString("adx_id", "");
                this.h = this.c.b().getString("adh_id", "");
                this.i = this.c.b().getString("ads_id", "");
                this.j = this.c.b().getString("adc_id", "");
                this.k = this.c.b().getString("common_config", "");
                this.e = this.c.b().getBoolean("skip_init");
            }
            if (this.d) {
                a.d();
            }
            a.c(activity, this.e, new a(activity, aVar));
        } else if (aVar != null) {
            ic.t("AdmobBanner:Please check params is right.", aVar, activity);
        } else {
            throw new IllegalArgumentException("AdmobBanner:Please check MediationListener is right.");
        }
    }

    @Override // defpackage.vb0
    public void j() {
        AdView adView = this.f;
        if (adView != null) {
            adView.pause();
        }
    }

    @Override // defpackage.vb0
    public void k() {
        AdView adView = this.f;
        if (adView != null) {
            adView.resume();
        }
    }
}
