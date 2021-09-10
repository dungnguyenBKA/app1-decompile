package com.facebook.ads.redexgen.X;

import android.text.Layout;
import androidx.annotation.NonNull;

/* renamed from: com.facebook.ads.redexgen.X.ap  reason: case insensitive filesystem */
public final class C1058ap extends GB implements Comparable<C1058ap> {
    public final int A00;

    public C1058ap(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3, z, i4);
        this.A00 = i5;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final int compareTo(@NonNull C1058ap apVar) {
        int i = apVar.A00;
        int i2 = this.A00;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        return 0;
    }
}
