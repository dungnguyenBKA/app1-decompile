package defpackage;

import defpackage.xd0;
import java.util.concurrent.ThreadFactory;

/* renamed from: cf0  reason: default package */
public final class cf0 extends xd0 {
    private static final ef0 b = new ef0("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())));
    final ThreadFactory a = b;

    @Override // defpackage.xd0
    public xd0.b a() {
        return new df0(this.a);
    }
}
