package defpackage;

import android.app.Activity;
import android.text.TextUtils;
import com.vungle.warren.AdConfig;
import com.vungle.warren.LoadAdCallback;
import com.vungle.warren.PlayAdCallback;
import com.vungle.warren.Vungle;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.AdvertisementDBAdapter;
import defpackage.ub0;
import defpackage.wb0;

/* renamed from: zc0  reason: default package */
public class zc0 extends wb0 {
    boolean c = false;
    jb0 d;
    String e = "";
    ub0.a f;
    String g = "";
    String h;

    /* renamed from: zc0$a */
    class a implements PlayAdCallback {
        final /* synthetic */ wb0.a a;
        final /* synthetic */ Activity b;

        a(wb0.a aVar, Activity activity) {
            this.a = aVar;
            this.b = activity;
        }

        @Override // com.vungle.warren.PlayAdCallback
        public void onAdClick(String str) {
        }

        @Override // com.vungle.warren.PlayAdCallback
        public void onAdEnd(String str) {
        }

        @Override // com.vungle.warren.PlayAdCallback
        public void onAdEnd(String str, boolean z, boolean z2) {
            if (this.b != null) {
                fc0 a2 = fc0.a();
                Activity activity = this.b;
                a2.b(activity, "VungleInterstitial:onAdEnd " + z + "#" + z2);
                ub0.a aVar = zc0.this.f;
                if (aVar != null && z2) {
                    aVar.c(this.b);
                }
                ub0.a aVar2 = zc0.this.f;
                if (aVar2 != null) {
                    aVar2.b(this.b);
                }
            }
        }

        @Override // com.vungle.warren.PlayAdCallback
        public void onAdLeftApplication(String str) {
        }

        @Override // com.vungle.warren.PlayAdCallback
        public void onAdRewarded(String str) {
        }

        @Override // com.vungle.warren.PlayAdCallback
        public void onAdStart(String str) {
            wb0.a aVar = this.a;
            if (aVar != null) {
                aVar.a(true);
            }
            if (this.b != null) {
                fc0.a().b(this.b, "VungleInterstitial:onAdStart");
                ub0.a aVar2 = zc0.this.f;
                if (aVar2 != null) {
                    aVar2.e(this.b);
                }
            }
        }

        @Override // com.vungle.warren.PlayAdCallback
        public void onAdViewed(String str) {
        }

        @Override // com.vungle.warren.PlayAdCallback
        public void onError(String str, VungleException vungleException) {
            wb0.a aVar = this.a;
            if (aVar != null) {
                aVar.a(false);
            }
            if (this.b != null) {
                fc0 a2 = fc0.a();
                Activity activity = this.b;
                StringBuilder q = ic.q("VungleInterstitial:onAdFailedToLoad errorCode:");
                q.append(vungleException.getExceptionCode());
                a2.b(activity, q.toString());
                fc0.a().c(this.b, vungleException);
            }
        }
    }

    /* renamed from: zc0$b */
    class b implements yc0 {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        /* renamed from: zc0$b$a */
        class a implements LoadAdCallback {
            a() {
            }

            @Override // com.vungle.warren.LoadAdCallback
            public void onAdLoad(String str) {
                fc0.a().b(b.this.a, "VungleInterstitial:onAdLoad");
                if (Vungle.canPlayAd(str)) {
                    b bVar = b.this;
                    zc0 zc0 = zc0.this;
                    zc0.c = true;
                    zc0.g = str;
                    ub0.a aVar = bVar.b;
                    if (aVar != null) {
                        aVar.a(bVar.a, null);
                        return;
                    }
                    return;
                }
                b bVar2 = b.this;
                ub0.a aVar2 = bVar2.b;
                if (aVar2 != null) {
                    ic.t("VungleInterstitial:loadAd but cant play", aVar2, bVar2.a);
                }
                fc0.a().b(b.this.a, "VungleInterstitial:loadAd but cant play");
            }

            @Override // com.vungle.warren.LoadAdCallback
            public void onError(String str, VungleException vungleException) {
                b bVar = b.this;
                ub0.a aVar = bVar.b;
                if (aVar != null) {
                    Activity activity = bVar.a;
                    StringBuilder q = ic.q("VungleInterstitial:load failed ");
                    q.append(vungleException.getLocalizedMessage());
                    aVar.d(activity, new kb0(q.toString()));
                }
                fc0 a2 = fc0.a();
                Activity activity2 = b.this.a;
                StringBuilder q2 = ic.q("VungleInterstitial:onError ");
                q2.append(vungleException.getLocalizedMessage());
                a2.b(activity2, q2.toString());
            }
        }

        b(Activity activity, ub0.a aVar) {
            this.a = activity;
            this.b = aVar;
        }

        @Override // defpackage.yc0
        public void a(boolean z) {
            if (z) {
                try {
                    if (Vungle.isInitialized()) {
                        Vungle.loadAd(zc0.this.d.a(), new a());
                        return;
                    }
                } catch (Throwable th) {
                    fc0.a().c(this.a, th);
                    return;
                }
            }
            ub0.a aVar = this.b;
            if (aVar != null) {
                aVar.d(this.a, new kb0("VungleInterstitial: not init"));
            }
            fc0.a().b(this.a, "VungleInterstitial: not init");
        }
    }

    @Override // defpackage.ub0
    public void a(Activity activity) {
        this.f = null;
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("VungleInterstitial@");
        q.append(c(this.h));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "VungleInterstitial:load");
        if (activity != null && lb0.a() != null && aVar != null) {
            this.f = aVar;
            try {
                jb0 a2 = lb0.a();
                this.d = a2;
                if (a2.b() != null) {
                    this.e = this.d.b().getString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, "");
                }
                if (TextUtils.isEmpty(this.e)) {
                    aVar.d(activity, new kb0("VungleInterstitial: appID is empty"));
                    fc0.a().b(activity, "VungleInterstitial:appID is empty");
                    return;
                }
                this.h = this.d.a();
                ad0.c(activity, this.e, new b(activity, aVar));
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        } else if (aVar != null) {
            ic.t("VungleInterstitial:Please check params is right.", aVar, activity);
        } else {
            throw new IllegalArgumentException("VungleInterstitial:Please check MediationListener is right.");
        }
    }

    @Override // defpackage.wb0
    public boolean k() {
        return this.c && !TextUtils.isEmpty(this.g);
    }

    @Override // defpackage.wb0
    public void l(Activity activity, wb0.a aVar) {
        try {
            if (k() && Vungle.canPlayAd(this.g)) {
                AdConfig adConfig = new AdConfig();
                adConfig.setAdOrientation(0);
                adConfig.setMuted(true);
                Vungle.playAd(this.g, adConfig, new a(aVar, activity));
            }
        } catch (Throwable th) {
            th.printStackTrace();
            if (aVar != null) {
                aVar.a(false);
            }
        }
    }
}
