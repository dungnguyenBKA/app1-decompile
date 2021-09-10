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

public class k extends xb0 {
    jb0 b;
    boolean c;
    boolean d;
    int e = 1;
    NativeAd f;
    NativeAppInstallAd g;
    int h = R.layout.ad_native_card;
    ub0.a i;
    String j;
    String k;
    String l;
    String m;
    String n;
    String o;
    public float p;

    class a implements d {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        /* renamed from: com.zjsoft.admob.k$a$a  reason: collision with other inner class name */
        class RunnableC0090a implements Runnable {
            final /* synthetic */ boolean b;

            RunnableC0090a(boolean z) {
                this.b = z;
            }

            public void run() {
                if (this.b) {
                    a aVar = a.this;
                    k kVar = k.this;
                    Activity activity = aVar.a;
                    jb0 jb0 = kVar.b;
                    Objects.requireNonNull(kVar);
                    try {
                        String a = jb0.a();
                        if (!TextUtils.isEmpty(kVar.j) && cc0.C(activity, kVar.n)) {
                            a = kVar.j;
                        } else if (TextUtils.isEmpty(kVar.m) || !cc0.B(activity, kVar.n)) {
                            int d = cc0.d(activity, kVar.n);
                            if (d != 1) {
                                if (d == 2) {
                                    if (!TextUtils.isEmpty(kVar.l)) {
                                        a = kVar.l;
                                    }
                                }
                            } else if (!TextUtils.isEmpty(kVar.k)) {
                                a = kVar.k;
                            }
                        } else {
                            a = kVar.m;
                        }
                        if (b.a) {
                            Log.e("ad_log", "AdmobNativeCard:id " + a);
                        }
                        kVar.o = a;
                        AdLoader.Builder builder = new AdLoader.Builder(activity.getApplicationContext(), a);
                        if (s.a().c(activity)) {
                            builder.forAppInstallAd(new m(kVar, activity));
                        } else {
                            builder.forNativeAd(new n(kVar, activity));
                        }
                        builder.withAdListener(new l(kVar, activity));
                        NativeAdOptions.Builder builder2 = new NativeAdOptions.Builder();
                        builder2.setRequestMultipleImages(false);
                        builder2.setReturnUrlsForImageAssets(false);
                        builder2.setAdChoicesPlacement(kVar.e);
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
                        ic.t("AdmobNativeCard:Admob has not been inited or is initing", aVar3, aVar2.a);
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
            this.a.runOnUiThread(new RunnableC0090a(z));
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
        StringBuilder q = ic.q("AdmobNativeCard@");
        q.append(c(this.o));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "AdmobNativeCard:load");
        if (activity != null && lb0.a() != null && aVar != null) {
            this.i = aVar;
            jb0 a2 = lb0.a();
            this.b = a2;
            if (a2.b() != null) {
                this.c = this.b.b().getBoolean("ad_for_child");
                this.e = this.b.b().getInt("ad_choices_position", 1);
                this.h = this.b.b().getInt("layout_id", R.layout.ad_native_card);
                this.j = this.b.b().getString("adx_id", "");
                this.k = this.b.b().getString("adh_id", "");
                this.l = this.b.b().getString("ads_id", "");
                this.m = this.b.b().getString("adc_id", "");
                this.n = this.b.b().getString("common_config", "");
                this.p = this.b.b().getFloat("cover_width", ((float) activity.getResources().getDisplayMetrics().widthPixels) * 0.9f);
                this.d = this.b.b().getBoolean("skip_init");
            }
            if (this.c) {
                a.d();
            }
            a.c(activity, this.d, new a(activity, aVar));
        } else if (aVar != null) {
            ic.t("AdmobNativeCard:Please check params is right.", aVar, activity);
        } else {
            throw new IllegalArgumentException("AdmobNativeCard:Please check MediationListener is right.");
        }
    }
}
