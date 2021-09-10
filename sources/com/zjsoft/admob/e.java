package com.zjsoft.admob;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.ads.consent.ConsentStatus;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import defpackage.dc0;
import defpackage.ub0;
import defpackage.wb0;
import java.util.Objects;

public class e extends wb0 {
    InterstitialAd c;
    ub0.a d;
    jb0 e;
    boolean f;
    boolean g;
    String h;
    String i;
    String j;
    String k;
    String l;
    String m = "";
    String n = "";
    dc0 o = null;

    class a implements d {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        /* renamed from: com.zjsoft.admob.e$a$a  reason: collision with other inner class name */
        class RunnableC0088a implements Runnable {
            final /* synthetic */ boolean b;

            RunnableC0088a(boolean z) {
                this.b = z;
            }

            public void run() {
                if (this.b) {
                    a aVar = a.this;
                    e eVar = e.this;
                    Activity activity = aVar.a;
                    jb0 jb0 = eVar.e;
                    Objects.requireNonNull(eVar);
                    try {
                        eVar.c = new InterstitialAd(activity.getApplicationContext());
                        String a = jb0.a();
                        if (!TextUtils.isEmpty(eVar.h) && cc0.C(activity, eVar.l)) {
                            a = eVar.h;
                        } else if (TextUtils.isEmpty(eVar.k) || !cc0.B(activity, eVar.l)) {
                            int d = cc0.d(activity, eVar.l);
                            if (d != 1) {
                                if (d == 2) {
                                    if (!TextUtils.isEmpty(eVar.j)) {
                                        a = eVar.j;
                                    }
                                }
                            } else if (!TextUtils.isEmpty(eVar.i)) {
                                a = eVar.i;
                            }
                        } else {
                            a = eVar.k;
                        }
                        if (com.zjsoft.baseadlib.b.a) {
                            Log.e("ad_log", "AdmobInterstitial:id " + a);
                        }
                        eVar.n = a;
                        eVar.c.setAdUnitId(a);
                        eVar.c.setAdListener(new f(eVar, activity));
                        AdRequest.Builder builder = new AdRequest.Builder();
                        if (cc0.l(activity) == ConsentStatus.NON_PERSONALIZED) {
                            Bundle bundle = new Bundle();
                            bundle.putString("npa", "1");
                            builder.addNetworkExtrasBundle(AdMobAdapter.class, bundle);
                        }
                        eVar.c.loadAd(builder.build());
                    } catch (Throwable th) {
                        ub0.a aVar2 = eVar.d;
                        if (aVar2 != null) {
                            ic.t("AdmobInterstitial:load exception, please check log", aVar2, activity);
                        }
                        fc0.a().c(activity, th);
                    }
                } else {
                    a aVar3 = a.this;
                    ub0.a aVar4 = aVar3.b;
                    if (aVar4 != null) {
                        ic.t("AdmobInterstitial:Admob has not been inited or is initing", aVar4, aVar3.a);
                    }
                }
            }
        }

        a(Activity activity, ub0.a aVar) {
            this.a = activity;
            this.b = aVar;
        }

        @Override // com.zjsoft.admob.d
        public void a(boolean z) {
            this.a.runOnUiThread(new RunnableC0088a(z));
        }
    }

    class b implements dc0.b {
        final /* synthetic */ wb0.a a;

        b(wb0.a aVar) {
            this.a = aVar;
        }

        @Override // defpackage.dc0.b
        public void a() {
            e.this.p(this.a);
        }
    }

    /* access modifiers changed from: private */
    public void o() {
        try {
            dc0 dc0 = this.o;
            if (dc0 != null && dc0.isShowing()) {
                this.o.dismiss();
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
            if (interstitialAd != null && interstitialAd.isLoaded()) {
                this.c.show();
                z = true;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            o();
        }
        if (aVar != null) {
            aVar.a(z);
        }
    }

    @Override // defpackage.ub0
    public synchronized void a(Activity activity) {
        try {
            InterstitialAd interstitialAd = this.c;
            if (interstitialAd != null) {
                interstitialAd.setAdListener(null);
                this.c = null;
                this.o = null;
            }
            fc0.a().b(activity, "AdmobInterstitial:destroy");
        } catch (Throwable th) {
            fc0.a().c(activity, th);
        }
        return;
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("AdmobInterstitial@");
        q.append(c(this.n));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "AdmobInterstitial:load");
        if (activity != null && lb0.a() != null && aVar != null) {
            this.d = aVar;
            jb0 a2 = lb0.a();
            this.e = a2;
            if (a2.b() != null) {
                this.f = this.e.b().getBoolean("ad_for_child");
                this.h = this.e.b().getString("adx_id", "");
                this.i = this.e.b().getString("adh_id", "");
                this.j = this.e.b().getString("ads_id", "");
                this.k = this.e.b().getString("adc_id", "");
                this.l = this.e.b().getString("common_config", "");
                this.m = this.e.b().getString("ad_position_key", "");
                this.g = this.e.b().getBoolean("skip_init");
            }
            if (this.f) {
                a.d();
            }
            a.c(activity, this.g, new a(activity, aVar));
        } else if (aVar != null) {
            ic.t("AdmobInterstitial:Please check params is right.", aVar, activity);
        } else {
            throw new IllegalArgumentException("AdmobInterstitial:Please check MediationListener is right.");
        }
    }

    @Override // defpackage.wb0
    public synchronized boolean k() {
        InterstitialAd interstitialAd = this.c;
        if (interstitialAd == null || !interstitialAd.isLoaded()) {
            return false;
        }
        return true;
    }

    @Override // defpackage.wb0
    public synchronized void l(Activity activity, wb0.a aVar) {
        try {
            dc0 j2 = j(activity, this.m, "admob_i_loading_time", this.l);
            this.o = j2;
            if (j2 != null) {
                j2.b(new b(aVar));
                this.o.show();
            } else {
                p(aVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            o();
            if (aVar != null) {
                aVar.a(false);
            }
        }
    }
}
