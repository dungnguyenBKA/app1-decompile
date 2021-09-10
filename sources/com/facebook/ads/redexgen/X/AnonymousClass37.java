package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;

/* renamed from: com.facebook.ads.redexgen.X.37  reason: invalid class name */
public final class AnonymousClass37 extends C0416By implements Comparable<AnonymousClass37> {
    public long A00;

    public AnonymousClass37() {
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final int compareTo(@NonNull AnonymousClass37 r8) {
        if (A04() == r8.A04()) {
            long j = ((YY) this).A00 - ((YY) r8).A00;
            if (j == 0) {
                j = this.A00 - r8.A00;
                if (j == 0) {
                    return 0;
                }
            }
            if (j > 0) {
                return 1;
            }
            return -1;
        } else if (A04()) {
            return 1;
        } else {
            return -1;
        }
    }
}
