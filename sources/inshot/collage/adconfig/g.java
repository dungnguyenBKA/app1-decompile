package inshot.collage.adconfig;

import android.content.Context;
import android.view.View;

public final class g implements qb0 {
    g() {
    }

    @Override // defpackage.qb0
    public void a(Context context, View view) {
        gg0.e(context, "context");
        o.a("BannerAd", "onAdLoad");
        if (view == null) {
            o.a("BannerAd", "onAdLoad but view = null !!!");
            return;
        }
        f fVar = f.k;
        f.c = true;
        f.e = view;
        fVar.m(view, true);
    }

    @Override // defpackage.sb0
    public void b(Context context) {
        gg0.e(context, "context");
        o.a("BannerAd", "onAdClick");
    }

    @Override // defpackage.sb0
    public void c(Context context, kb0 kb0) {
        gg0.e(context, "context");
        gg0.e(kb0, "message");
        o.a("BannerAd", "onAdLoadFailed : " + kb0);
        f fVar = f.k;
        f.c = false;
        f.j.removeMessages(0);
        f.j.sendEmptyMessageDelayed(0, f.g);
    }
}
