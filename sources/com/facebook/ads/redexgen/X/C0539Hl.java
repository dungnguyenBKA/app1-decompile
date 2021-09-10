package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* renamed from: com.facebook.ads.redexgen.X.Hl  reason: case insensitive filesystem */
public class C0539Hl implements Comparable<C0539Hl> {
    public final long A00;
    public final long A01;
    public final long A02;
    @Nullable
    public final File A03;
    public final String A04;
    public final boolean A05;

    public C0539Hl(String str, long j, long j2, long j3, @Nullable File file) {
        boolean z;
        this.A04 = str;
        this.A02 = j;
        this.A01 = j2;
        if (file != null) {
            z = true;
        } else {
            z = false;
        }
        this.A05 = z;
        this.A03 = file;
        this.A00 = j3;
    }

    /* renamed from: A00 */
    public final int compareTo(@NonNull C0539Hl hl) {
        if (!this.A04.equals(hl.A04)) {
            return this.A04.compareTo(hl.A04);
        }
        long j = this.A02 - hl.A02;
        if (j == 0) {
            return 0;
        }
        return j < 0 ? -1 : 1;
    }

    public final boolean A01() {
        return !this.A05;
    }

    public final boolean A02() {
        return this.A01 == -1;
    }
}
