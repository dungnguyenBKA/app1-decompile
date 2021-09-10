package defpackage;

import android.content.Context;
import com.vungle.warren.PlayAdCallback;
import com.vungle.warren.error.VungleException;
import defpackage.ub0;

/* renamed from: xc0  reason: default package */
class xc0 implements PlayAdCallback {
    final /* synthetic */ ub0.a a;
    final /* synthetic */ wc0 b;

    xc0(wc0 wc0, ub0.a aVar) {
        this.b = wc0;
        this.a = aVar;
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdClick(String str) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdEnd(String str) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdEnd(String str, boolean z, boolean z2) {
        Context context = this.b.d;
        if (context != null) {
            ub0.a aVar = this.a;
            if (aVar != null && z2) {
                aVar.c(context);
            }
            fc0 a2 = fc0.a();
            Context context2 = this.b.d;
            a2.b(context2, "VungleBanner:onAdEnd#" + z2);
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
        if (this.b.d != null) {
            fc0.a().b(this.b.d, "VungleBanner:onAdStart");
            ub0.a aVar = this.a;
            if (aVar != null) {
                aVar.e(this.b.d);
            }
        }
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdViewed(String str) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onError(String str, VungleException vungleException) {
        if (this.b.d != null) {
            fc0 a2 = fc0.a();
            Context context = this.b.d;
            StringBuilder q = ic.q("VungleBanner:onAdFailedToLoad errorCode:");
            q.append(vungleException.getExceptionCode());
            a2.b(context, q.toString());
            fc0.a().c(this.b.d, vungleException);
        }
    }
}
