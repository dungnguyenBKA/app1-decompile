package com.facebook.ads.redexgen.X;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.facebook.ads.redexgen.X.Bn  reason: case insensitive filesystem */
public final class C0407Bn {
    public final CopyOnWriteArrayList<C0406Bm> A00 = new CopyOnWriteArrayList<>();

    public final void A00() {
        Iterator<C0406Bm> it = this.A00.iterator();
        while (it.hasNext()) {
            C0406Bm handlerAndListener = it.next();
            handlerAndListener.A00.post(new RunnableC0402Bi(this, handlerAndListener.A01));
        }
    }

    public final void A01() {
        Iterator<C0406Bm> it = this.A00.iterator();
        while (it.hasNext()) {
            C0406Bm handlerAndListener = it.next();
            handlerAndListener.A00.post(new RunnableC0405Bl(this, handlerAndListener.A01));
        }
    }

    public final void A02() {
        Iterator<C0406Bm> it = this.A00.iterator();
        while (it.hasNext()) {
            C0406Bm handlerAndListener = it.next();
            handlerAndListener.A00.post(new RunnableC0404Bk(this, handlerAndListener.A01));
        }
    }

    public final void A03(Handler handler, AbstractC0408Bo bo) {
        boolean z;
        if (handler == null || bo == null) {
            z = false;
        } else {
            z = true;
        }
        C0551Hx.A03(z);
        this.A00.add(new C0406Bm(handler, bo));
    }

    public final void A04(Exception exc) {
        Iterator<C0406Bm> it = this.A00.iterator();
        while (it.hasNext()) {
            C0406Bm next = it.next();
            next.A00.post(new RunnableC0403Bj(this, next.A01, exc));
        }
    }
}
