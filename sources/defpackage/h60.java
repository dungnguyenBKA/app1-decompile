package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* access modifiers changed from: package-private */
/* renamed from: h60  reason: default package */
public class h60 extends z60<AtomicLong> {
    final /* synthetic */ z60 a;

    h60(z60 z60) {
        this.a = z60;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.z60
    public AtomicLong b(a90 a90) {
        return new AtomicLong(((Number) this.a.b(a90)).longValue());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
    @Override // defpackage.z60
    public void c(c90 c90, AtomicLong atomicLong) {
        this.a.c(c90, Long.valueOf(atomicLong.get()));
    }
}
