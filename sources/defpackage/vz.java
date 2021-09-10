package defpackage;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
/* renamed from: vz  reason: default package */
public class vz implements dw<Void, T> {
    final /* synthetic */ Callable a;

    vz(tz tzVar, Callable callable) {
        this.a = callable;
    }

    @Override // defpackage.dw
    public T then(kw<Void> kwVar) {
        return (T) this.a.call();
    }
}
