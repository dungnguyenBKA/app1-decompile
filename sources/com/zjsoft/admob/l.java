package com.zjsoft.admob;

import android.app.Activity;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import defpackage.ub0;

class l extends AdListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ k b;

    l(k kVar, Activity activity) {
        this.b = kVar;
        this.a = activity;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClicked() {
        super.onAdClicked();
        fc0.a().b(this.a, "AdmobNativeCard:onAdClicked");
        ub0.a aVar = this.b.i;
        if (aVar != null) {
            aVar.c(this.a);
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        super.onAdClosed();
        fc0.a().b(this.a, "AdmobNativeCard:onAdClosed");
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        super.onAdFailedToLoad(loadAdError);
        fc0 a2 = fc0.a();
        Activity activity = this.a;
        StringBuilder q = ic.q("AdmobNativeCard:onAdFailedToLoad errorCode:");
        q.append(loadAdError.getCode());
        q.append(" -> ");
        q.append(loadAdError.getMessage());
        a2.b(activity, q.toString());
        ub0.a aVar = this.b.i;
        if (aVar != null) {
            Activity activity2 = this.a;
            StringBuilder q2 = ic.q("AdmobNativeCard:onAdFailedToLoad errorCode:");
            q2.append(loadAdError.getCode());
            q2.append(" -> ");
            q2.append(loadAdError.getMessage());
            aVar.d(activity2, new kb0(q2.toString()));
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdImpression() {
        super.onAdImpression();
        fc0.a().b(this.a, "AdmobNativeCard:onAdImpression");
        ub0.a aVar = this.b.i;
        if (aVar != null) {
            aVar.e(this.a);
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        super.onAdLoaded();
        fc0.a().b(this.a, "AdmobNativeCard:onAdLoaded");
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        super.onAdOpened();
        fc0.a().b(this.a, "AdmobNativeCard:onAdOpened");
    }
}
