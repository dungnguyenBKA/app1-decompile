package com.zjsoft.admob;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.ads.consent.ConsentStatus;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.zjsoft.baseadlib.b;
import defpackage.ub0;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class g extends vb0 {
    jb0 b;
    boolean c;
    boolean d;
    int e = 1;
    NativeAd f;
    NativeAppInstallAd g;
    ub0.a h;
    int i = R.layout.ac;
    int j = R.layout.ad;
    String k;
    String l;
    String m;
    String n;
    String o;
    String p;

    class a implements d {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        /* renamed from: com.zjsoft.admob.g$a$a  reason: collision with other inner class name */
        class RunnableC0089a implements Runnable {
            final /* synthetic */ boolean b;

            RunnableC0089a(boolean z) {
                this.b = z;
            }

            public void run() {
                if (this.b) {
                    a aVar = a.this;
                    g gVar = g.this;
                    Activity activity = aVar.a;
                    jb0 jb0 = gVar.b;
                    Objects.requireNonNull(gVar);
                    try {
                        String a = jb0.a();
                        if (!TextUtils.isEmpty(gVar.k) && cc0.C(activity, gVar.o)) {
                            a = gVar.k;
                        } else if (TextUtils.isEmpty(gVar.n) || !cc0.B(activity, gVar.o)) {
                            int d = cc0.d(activity, gVar.o);
                            if (d != 1) {
                                if (d == 2) {
                                    if (!TextUtils.isEmpty(gVar.m)) {
                                        a = gVar.m;
                                    }
                                }
                            } else if (!TextUtils.isEmpty(gVar.l)) {
                                a = gVar.l;
                            }
                        } else {
                            a = gVar.n;
                        }
                        if (b.a) {
                            Log.e("ad_log", "AdmobNativeBanner:id " + a);
                        }
                        gVar.p = a;
                        AdLoader.Builder builder = new AdLoader.Builder(activity.getApplicationContext(), a);
                        if (s.a().b(activity)) {
                            builder.forAppInstallAd(new j(gVar, activity));
                        } else {
                            builder.forNativeAd(new i(gVar, activity));
                        }
                        builder.withAdListener(new h(gVar, activity));
                        NativeAdOptions.Builder builder2 = new NativeAdOptions.Builder();
                        builder2.setRequestMultipleImages(false);
                        builder2.setReturnUrlsForImageAssets(false);
                        builder2.setAdChoicesPlacement(gVar.e);
                        builder2.setMediaAspectRatio(2);
                        VideoOptions.Builder builder3 = new VideoOptions.Builder();
                        builder3.setStartMuted(cc0.x(activity));
                        builder2.setVideoOptions(builder3.build());
                        builder.withNativeAdOptions(builder2.build());
                        AdRequest.Builder builder4 = new AdRequest.Builder();
                        if (cc0.l(activity) == ConsentStatus.NON_PERSONALIZED) {
                            Bundle bundle = new Bundle();
                            bundle.putString("npa", "1");
                            builder4.addNetworkExtrasBundle(AdMobAdapter.class, bundle);
                        }
                        builder.build().loadAd(builder4.build());
                    } catch (Throwable th) {
                        fc0.a().c(activity, th);
                    }
                } else {
                    a aVar2 = a.this;
                    ub0.a aVar3 = aVar2.b;
                    if (aVar3 != null) {
                        ic.t("AdmobNativeBanner:Admob has not been inited or is initing", aVar3, aVar2.a);
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
            this.a.runOnUiThread(new RunnableC0089a(z));
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
        StringBuilder q = ic.q("AdmobNativeBanner@");
        q.append(c(this.p));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "AdmobNativeBanner:load");
        if (activity != null && lb0.a() != null && aVar != null) {
            this.h = aVar;
            jb0 a2 = lb0.a();
            this.b = a2;
            if (a2.b() != null) {
                this.c = this.b.b().getBoolean("ad_for_child");
                this.e = this.b.b().getInt("ad_choices_position", 1);
                this.i = this.b.b().getInt("layout_id", R.layout.ac);
                this.j = this.b.b().getInt("root_layout_id", R.layout.ad);
                this.k = this.b.b().getString("adx_id", "");
                this.l = this.b.b().getString("adh_id", "");
                this.m = this.b.b().getString("ads_id", "");
                this.n = this.b.b().getString("adc_id", "");
                this.o = this.b.b().getString("common_config", "");
                this.d = this.b.b().getBoolean("skip_init");
            }
            if (this.c) {
                a.d();
            }
            a.c(activity, this.d, new a(activity, aVar));
        } else if (aVar != null) {
            ic.t("AdmobNativeBanner:Please check params is right.", aVar, activity);
        } else {
            throw new IllegalArgumentException("AdmobNativeBanner:Please check MediationListener is right.");
        }
    }

    @Override // defpackage.vb0
    public void j() {
    }

    @Override // defpackage.vb0
    public void k() {
    }
}
