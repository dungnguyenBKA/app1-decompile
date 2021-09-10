package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.facebook.ads.redexgen.X.3l  reason: invalid class name and case insensitive filesystem */
public class RunnableC02103l implements Runnable {
    public final /* synthetic */ C0472Et A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC02103l(C0472Et et, ArrayList arrayList) {
        this.A00 = et;
        this.A01 = arrayList;
    }

    public final void run() {
        Iterator it = this.A01.iterator();
        while (it.hasNext()) {
            this.A00.A0W((AbstractC02274c) it.next());
        }
        this.A01.clear();
        this.A00.A01.remove(this.A01);
    }
}
