package defpackage;

import java.util.concurrent.CountDownLatch;

/* access modifiers changed from: package-private */
/* renamed from: f10  reason: default package */
public final /* synthetic */ class f10 implements dw {
    private final CountDownLatch a;

    private f10(CountDownLatch countDownLatch) {
        this.a = countDownLatch;
    }

    public static dw a(CountDownLatch countDownLatch) {
        return new f10(countDownLatch);
    }

    @Override // defpackage.dw
    public Object then(kw kwVar) {
        CountDownLatch countDownLatch = this.a;
        int i = h10.b;
        countDownLatch.countDown();
        return null;
    }
}
