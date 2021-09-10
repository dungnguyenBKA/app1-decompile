package com.zjsoft.admob;

import android.app.Activity;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import defpackage.ub0;

/* access modifiers changed from: package-private */
public class c extends AdListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ b b;

    c(b bVar, Activity activity) {
        this.b = bVar;
        this.a = activity;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClicked() {
        super.onAdClicked();
        fc0.a().b(this.a, "AdmobBanner:onAdClicked");
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        super.onAdClosed();
        fc0.a().b(this.a, "AdmobBanner:onAdClosed");
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        super.onAdFailedToLoad(loadAdError);
        ub0.a aVar = this.b.b;
        if (aVar != null) {
            Activity activity = this.a;
            StringBuilder q = ic.q("AdmobBanner:onAdFailedToLoad, errorCode : ");
            q.append(loadAdError.getCode());
            q.append(" -> ");
            q.append(loadAdError.getMessage());
            aVar.d(activity, new kb0(q.toString()));
        }
        fc0 a2 = fc0.a();
        Activity activity2 = this.a;
        StringBuilder q2 = ic.q("AdmobBanner:onAdFailedToLoad errorCode:");
        q2.append(loadAdError.getCode());
        q2.append(" -> ");
        q2.append(loadAdError.getMessage());
        a2.b(activity2, q2.toString());
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdImpression() {
        super.onAdImpression();
        ub0.a aVar = this.b.b;
        if (aVar != null) {
            aVar.e(this.a);
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        super.onAdLoaded();
        b bVar = this.b;
        ub0.a aVar = bVar.b;
        if (aVar != null) {
            aVar.a(this.a, bVar.f);
        }
        fc0.a().b(this.a, "AdmobBanner:onAdLoaded");
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        super.onAdOpened();
        fc0.a().b(this.a, "AdmobBanner:onAdOpened");
        ub0.a aVar = this.b.b;
        if (aVar != null) {
            aVar.c(this.a);
        }
    }
}
