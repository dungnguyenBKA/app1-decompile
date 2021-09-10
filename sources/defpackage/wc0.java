package defpackage;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.vungle.warren.AdConfig;
import com.vungle.warren.Banners;
import com.vungle.warren.LoadAdCallback;
import com.vungle.warren.Vungle;
import com.vungle.warren.VungleBanner;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.AdvertisementDBAdapter;
import defpackage.ub0;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: wc0  reason: default package */
public class wc0 extends vb0 {
    jb0 b;
    String c = "";
    Context d;
    VungleBanner e;
    String f;

    /* renamed from: wc0$a */
    class a implements yc0 {
        final /* synthetic */ Activity a;
        final /* synthetic */ ub0.a b;

        /* renamed from: wc0$a$a  reason: collision with other inner class name */
        class C0119a implements LoadAdCallback {
            C0119a() {
            }

            @Override // com.vungle.warren.LoadAdCallback
            public void onAdLoad(String str) {
                VungleBanner vungleBanner;
                fc0.a().b(a.this.a, "VungleBanner:onAdLoad");
                wc0 wc0 = wc0.this;
                String a2 = wc0.b.a();
                ub0.a aVar = a.this.b;
                Objects.requireNonNull(wc0);
                AdConfig.AdSize adSize = AdConfig.AdSize.BANNER;
                if (Banners.canPlayAd(a2, adSize)) {
                    vungleBanner = Banners.getBanner(a2, adSize, new xc0(wc0, aVar));
                    wc0.e = vungleBanner;
                } else {
                    vungleBanner = null;
                }
                if (vungleBanner != null) {
                    a aVar2 = a.this;
                    ub0.a aVar3 = aVar2.b;
                    if (aVar3 != null) {
                        aVar3.a(aVar2.a, vungleBanner);
                        return;
                    }
                    return;
                }
                a aVar4 = a.this;
                ub0.a aVar5 = aVar4.b;
                if (aVar5 != null) {
                    ic.t("VungleBanner:onAdFailedToLoad, VungleBanner == null", aVar5, aVar4.a);
                }
            }

            @Override // com.vungle.warren.LoadAdCallback
            public void onError(String str, VungleException vungleException) {
                a aVar = a.this;
                ub0.a aVar2 = aVar.b;
                if (aVar2 != null) {
                    Activity activity = aVar.a;
                    StringBuilder q = ic.q("VungleBanner:onAdFailedToLoad, error code : ");
                    q.append(vungleException.getExceptionCode());
                    aVar2.d(activity, new kb0(q.toString()));
                }
                fc0 a2 = fc0.a();
                Activity activity2 = a.this.a;
                StringBuilder q2 = ic.q("VungleBanner:onError ");
                q2.append(vungleException.getLocalizedMessage());
                a2.b(activity2, q2.toString());
            }
        }

        a(Activity activity, ub0.a aVar) {
            this.a = activity;
            this.b = aVar;
        }

        @Override // defpackage.yc0
        public void a(boolean z) {
            if (z) {
                try {
                    if (Vungle.isInitialized()) {
                        Banners.loadBanner(wc0.this.b.a(), AdConfig.AdSize.BANNER, new C0119a());
                    }
                } catch (Throwable th) {
                    fc0.a().c(this.a, th);
                }
            }
        }
    }

    @Override // defpackage.ub0
    public void a(Activity activity) {
        VungleBanner vungleBanner = this.e;
        if (vungleBanner != null) {
            vungleBanner.destroyAd();
        }
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("VungleBanner@");
        q.append(c(this.f));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "VungleBanner:load");
        if (activity != null && lb0.a() != null && aVar != null) {
            this.d = activity.getApplicationContext();
            try {
                jb0 a2 = lb0.a();
                this.b = a2;
                if (a2.b() != null) {
                    this.c = this.b.b().getString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, "");
                    this.b.b().getInt("root_layout_id", R.layout.ad);
                }
                if (TextUtils.isEmpty(this.c)) {
                    aVar.d(activity, new kb0("VungleBanner: appID is empty"));
                    fc0.a().b(activity, "VungleBanner:appID is empty");
                    return;
                }
                this.f = this.b.a();
                ad0.c(activity, this.c, new a(activity, aVar));
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        } else if (aVar != null) {
            ic.t("VungleBanner:Please check params is right.", aVar, activity);
        } else {
            throw new IllegalArgumentException("VungleBanner:Please check MediationListener is right.");
        }
    }

    @Override // defpackage.vb0
    public void j() {
    }

    @Override // defpackage.vb0
    public void k() {
    }
}
