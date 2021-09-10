package inshot.collage.adconfig;

import android.content.Context;
import android.os.Message;
import inshot.collage.adconfig.l;

public final class m implements rb0 {
    final /* synthetic */ j a;
    final /* synthetic */ boolean b;

    m(j jVar, boolean z) {
        this.a = jVar;
        this.b = z;
    }

    @Override // defpackage.sb0
    public void b(Context context) {
        gg0.e(context, "context");
    }

    @Override // defpackage.sb0
    public void c(Context context, kb0 kb0) {
        gg0.e(context, "context");
        gg0.e(kb0, "message");
        o.a("FullAd", "onAdLoadFailed: type = " + this.a.name() + ", error = " + kb0);
        l lVar = l.f;
        l lVar2 = l.f;
        l.a.remove(this.a);
        if (!(l.b)) {
            l.a aVar = l.e;
            Message obtainMessage = l.e.obtainMessage(this.a.ordinal());
            obtainMessage.obj = Boolean.valueOf(this.b);
            aVar.sendMessageDelayed(obtainMessage, (long) l.c);
        }
    }

    @Override // defpackage.rb0
    public void d(Context context) {
        gg0.e(context, "context");
        o.a("FullAd", "onAdLoad: type = " + this.a.name());
        l lVar = l.f;
        l lVar2 = l.f;
        l.e.removeMessages(this.a.ordinal());
    }

    @Override // defpackage.rb0
    public void e(Context context) {
        gg0.e(context, "context");
        o.a("FullAd", "onAdClosed: type = " + this.a.name());
        l lVar = l.f;
        l lVar2 = l.f;
    }
}
