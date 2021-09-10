package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.facebook.ads.redexgen.X.3j  reason: invalid class name and case insensitive filesystem */
public class RunnableC02083j implements Runnable {
    public final /* synthetic */ C0472Et A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC02083j(C0472Et et, ArrayList arrayList) {
        this.A00 = et;
        this.A01 = arrayList;
    }

    public final void run() {
        Iterator it = this.A01.iterator();
        while (it.hasNext()) {
            C02173s moveInfo = (C02173s) it.next();
            this.A00.A0X(moveInfo.A04, moveInfo.A00, moveInfo.A01, moveInfo.A02, moveInfo.A03);
        }
        this.A01.clear();
        this.A00.A05.remove(this.A01);
    }
}
