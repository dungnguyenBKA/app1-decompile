package com.facebook.ads.redexgen.X;

import android.database.Observable;

/* renamed from: com.facebook.ads.redexgen.X.49  reason: invalid class name */
public class AnonymousClass49 extends Observable<AnonymousClass4A> {
    public final void A00() {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((AnonymousClass4A) this.mObservers.get(size)).A00();
        }
    }
}
