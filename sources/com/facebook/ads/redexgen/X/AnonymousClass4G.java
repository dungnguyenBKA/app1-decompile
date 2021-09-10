package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.4G  reason: invalid class name */
public abstract class AnonymousClass4G {
    public static String[] A06;
    public long A00 = 120;
    public long A01 = 250;
    public long A02 = 250;
    public long A03 = 120;
    public AnonymousClass4E A04 = null;
    public ArrayList<RecyclerView.ItemAnimator.ItemAnimatorFinishedListener> A05 = new ArrayList<>();

    static {
        A02();
    }

    public static void A02() {
        A06 = new String[]{"wCFFy4v0UHolBGzubHhtaTK0KlaK5TU8", "WXL", "veTi", "n3", "rW28yUWMMTgiQlEcIz6smwE3e87Fn5Ax", "QU5acghFPGL2KQJts4swUt9W5A9MK8iM", "qIZlYUWuFA6tmX766BSANKSPkXlWbMWT", "RhPzJuizv3JTUr3AZhw4zLdz5ZpO"};
    }

    public abstract void A0C();

    public abstract void A0D();

    public abstract void A0E(AbstractC02274c v);

    public abstract boolean A0F();

    public abstract boolean A0I(@NonNull AbstractC02274c v, @Nullable AnonymousClass4F v2, @NonNull AnonymousClass4F v3);

    public abstract boolean A0J(@NonNull AbstractC02274c v, @NonNull AnonymousClass4F v2, @Nullable AnonymousClass4F v3);

    public abstract boolean A0K(@NonNull AbstractC02274c v, @NonNull AnonymousClass4F v2, @NonNull AnonymousClass4F v3);

    public abstract boolean A0L(@NonNull AbstractC02274c v, @NonNull AbstractC02274c v2, @NonNull AnonymousClass4F v3, @NonNull AnonymousClass4F v4);

    public static int A00(AbstractC02274c r7) {
        int pos = r7.A0C & 14;
        if (r7.A0c()) {
            return 4;
        }
        if ((pos & 4) != 0) {
            return pos;
        }
        int A0K = r7.A0K();
        int A0H = r7.A0H();
        String[] strArr = A06;
        if (strArr[3].length() != strArr[1].length()) {
            A06[0] = "z6mPnscAmNwlAliMzxZ9cFQDVALsWjfG";
            if (A0K == -1 || A0H == -1 || A0K == A0H) {
                return pos;
            }
            return pos | 2048;
        }
        throw new RuntimeException();
    }

    private final AnonymousClass4F A01() {
        return new AnonymousClass4F();
    }

    public final long A03() {
        return this.A00;
    }

    public final long A04() {
        return this.A01;
    }

    public final long A05() {
        return this.A02;
    }

    public final long A06() {
        return this.A03;
    }

    @NonNull
    public final AnonymousClass4F A07(@NonNull AnonymousClass4Z r2, @NonNull AbstractC02274c r3) {
        return A01().A01(r3);
    }

    @NonNull
    public final AnonymousClass4F A08(@NonNull AnonymousClass4Z r2, @NonNull AbstractC02274c r3, int i, @NonNull List<Object> list) {
        return A01().A01(r3);
    }

    public final void A09() {
        if (0 < this.A05.size()) {
            this.A05.get(0);
            throw null;
        } else {
            this.A05.clear();
        }
    }

    public final void A0A(AnonymousClass4E r1) {
        this.A04 = r1;
    }

    public final void A0B(AbstractC02274c r2) {
        AnonymousClass4E r0 = this.A04;
        if (r0 != null) {
            r0.A9P(r2);
        }
    }

    public boolean A0G(@NonNull AbstractC02274c r2, @NonNull List<Object> list) {
        return A0H(r2);
    }

    public boolean A0H(@NonNull AbstractC02274c r2) {
        return true;
    }
}
