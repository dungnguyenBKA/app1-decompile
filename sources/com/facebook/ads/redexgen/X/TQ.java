package com.facebook.ads.redexgen.X;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class TQ extends AnonymousClass4G {
    public static String[] A01;
    public boolean A00 = true;

    static {
        A08();
    }

    public static void A08() {
        A01 = new String[]{"ufm8s7LRmOM7", "sIBwdoM05ajejE", "0NxvrnR7UZDHrBy4xVhLU5lsqzWJ5R3x", "FsILnIqpIa8iE3wffvJrO4tNlZdDmpUd", "wKnqjXSh8f61FKWyknAGi8xlXXoDdiLA", "lpMPMGmveEx5YZPPZgDkriuB4nzdouJK", "fQPzW90JHWOApVaaQbndX59CGXgCnXlm", "Pp9SKBa6RS3IfLIGXA9e4oeVKGHa5CsE"};
    }

    public abstract boolean A0Q(AbstractC02274c v);

    public abstract boolean A0R(AbstractC02274c v);

    public abstract boolean A0S(AbstractC02274c v, int i, int i2, int i3, int i4);

    public abstract boolean A0T(AbstractC02274c v, AbstractC02274c v2, int i, int i2, int i3, int i4);

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4G
    public final boolean A0H(@NonNull AbstractC02274c r2) {
        return !this.A00 || r2.A0c();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4G
    public final boolean A0I(@NonNull AbstractC02274c r8, @Nullable AnonymousClass4F r9, @NonNull AnonymousClass4F r10) {
        if (r9 == null || (r9.A01 == r10.A01 && r9.A03 == r10.A03)) {
            return A0Q(r8);
        }
        return A0S(r8, r9.A01, r9.A03, r10.A01, r10.A03);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4G
    public final boolean A0J(@NonNull AbstractC02274c r9, @NonNull AnonymousClass4F r10, @Nullable AnonymousClass4F r11) {
        int i;
        int newLeft;
        int i2 = r10.A01;
        int i3 = r10.A03;
        View view = r9.A0H;
        if (r11 == null) {
            i = view.getLeft();
        } else {
            i = r11.A01;
        }
        if (r11 == null) {
            newLeft = view.getTop();
        } else {
            newLeft = r11.A03;
        }
        if (r9.A0d() || (i2 == i && i3 == newLeft)) {
            return A0R(r9);
        }
        view.layout(i, newLeft, view.getWidth() + i, view.getHeight() + newLeft);
        return A0S(r9, i2, i3, i, newLeft);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4G
    public final boolean A0K(@NonNull AbstractC02274c r8, @NonNull AnonymousClass4F r9, @NonNull AnonymousClass4F r10) {
        if (r9.A01 != r10.A01 || r9.A03 != r10.A03) {
            return A0S(r8, r9.A01, r9.A03, r10.A01, r10.A03);
        }
        A0N(r8);
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4G
    public final boolean A0L(@NonNull AbstractC02274c r11, @NonNull AbstractC02274c r12, @NonNull AnonymousClass4F r13, @NonNull AnonymousClass4F r14) {
        int fromTop;
        int toLeft;
        int i = r13.A01;
        int i2 = r13.A03;
        if (r12.A0i()) {
            fromTop = r13.A01;
            toLeft = r13.A03;
        } else {
            fromTop = r14.A01;
            toLeft = r14.A03;
        }
        if (A01[1].length() != 14) {
            throw new RuntimeException();
        }
        A01[1] = "7F8ns227Orjao7";
        return A0T(r11, r12, i, i2, fromTop, toLeft);
    }

    public final void A0M(AbstractC02274c r1) {
        A0B(r1);
    }

    public final void A0N(AbstractC02274c r1) {
        A0B(r1);
    }

    public final void A0O(AbstractC02274c r1) {
        A0B(r1);
    }

    public final void A0P(AbstractC02274c r1, boolean z) {
        A0B(r1);
    }
}
