package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* renamed from: com.facebook.ads.redexgen.X.3v  reason: invalid class name and case insensitive filesystem */
public final class RunnableC02203v implements Runnable {
    public static Comparator<C02193u> A04 = new C02183t();
    public static byte[] A05;
    public static String[] A06;
    public static final ThreadLocal<RunnableC02203v> A07 = new ThreadLocal<>();
    public long A00;
    public long A01;
    public ArrayList<C0469Eq> A02 = new ArrayList<>();
    public ArrayList<C02193u> A03 = new ArrayList<>();

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 8);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{97, 101, 47, 93, 116, -126, -125, 116, 115, 47, 95, -127, 116, 117, 116, -125, 114, 119, 92, 96, 42, 90, 124, 111, 112, 111, 126, 109, 114};
    }

    public static void A04() {
        A06 = new String[]{"C", "g", "thIgEQWd9nx", "UJ", "nKFIv9xSQBz", "WKzZJ6F0j2u08DpGCnjDR9E", "2Nt4JwZoKXCf4OpJNcF1oxTto7W5gJbD", "RW"};
    }

    static {
        A04();
        A03();
    }

    private AbstractC02274c A00(C0469Eq eq, int i, long j) {
        if (A09(eq, i)) {
            return null;
        }
        AnonymousClass4S r3 = eq.A0r;
        try {
            eq.A1M();
            AbstractC02274c A0J = r3.A0J(i, false, j);
            if (A0J != null) {
                if (!A0J.A0b() || A0J.A0c()) {
                    r3.A0e(A0J, false);
                } else {
                    r3.A0Y(A0J.A0H);
                }
            }
            return A0J;
        } finally {
            eq.A1r(false);
        }
    }

    /* JADX INFO: Multiple debug info for r9v0 int: [D('i' int), D('totalTaskIndex' int)] */
    /* JADX INFO: Multiple debug info for r0v22 'task'  com.facebook.ads.redexgen.X.3u: [D('prefetchRegistry' com.facebook.ads.redexgen.X.T8), D('task' com.facebook.ads.redexgen.X.3u)] */
    private void A02() {
        C02193u task;
        boolean z;
        int totalTaskIndex = this.A02.size();
        int i = 0;
        for (int i2 = 0; i2 < totalTaskIndex; i2++) {
            C0469Eq eq = this.A02.get(i2);
            if (eq.getWindowVisibility() == 0) {
                eq.A02.A05(eq, false);
                i += eq.A02.A00;
            }
        }
        this.A03.ensureCapacity(i);
        int i3 = 0;
        String[] strArr = A06;
        if (strArr[3].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[3] = "OH";
        strArr2[7] = "7S";
        for (int i4 = 0; i4 < totalTaskIndex; i4++) {
            C0469Eq eq2 = this.A02.get(i4);
            if (eq2.getWindowVisibility() == 0) {
                T8 t8 = eq2.A02;
                int abs = Math.abs(t8.A01) + Math.abs(t8.A02);
                for (int i5 = 0; i5 < t8.A00 * 2; i5 += 2) {
                    if (i3 >= this.A03.size()) {
                        task = new C02193u();
                        this.A03.add(task);
                    } else {
                        task = this.A03.get(i3);
                    }
                    int i6 = t8.A03[i5 + 1];
                    if (i6 <= abs) {
                        z = true;
                    } else {
                        z = false;
                    }
                    task.A04 = z;
                    task.A02 = abs;
                    task.A00 = i6;
                    task.A03 = eq2;
                    task.A01 = t8.A03[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.A03, A04);
    }

    private void A05(long j) {
        for (int i = 0; i < this.A03.size(); i++) {
            C02193u r1 = this.A03.get(i);
            if (r1.A03 != null) {
                A07(r1, j);
                r1.A00();
            } else {
                return;
            }
        }
    }

    private final void A06(long j) {
        A02();
        A05(j);
    }

    private void A07(C02193u r5, long j) {
        long j2;
        if (r5.A04) {
            j2 = Long.MAX_VALUE;
        } else {
            j2 = j;
        }
        AbstractC02274c A002 = A00(r5.A03, r5.A01, j2);
        if (A002 != null && A002.A09 != null && A002.A0b() && !A002.A0c()) {
            A08(A002.A09.get(), j);
        }
    }

    private void A08(@Nullable C0469Eq eq, long j) {
        if (eq != null) {
            if (eq.A0C) {
                C02073i r3 = eq.A01;
                if (A06[5].length() != 17) {
                    A06[6] = "t2x0aSlbBonOFe0N5m1ttILNz4IaYpUW";
                    if (r3.A07() != 0) {
                        eq.A1P();
                    }
                }
                throw new RuntimeException();
            }
            T8 t8 = eq.A02;
            t8.A05(eq, true);
            if (t8.A00 != 0) {
                try {
                    AnonymousClass2M.A01(A01(0, 18, 7));
                    eq.A0s.A05(eq.A04);
                    int i = 0;
                    while (true) {
                        int i2 = t8.A00 * 2;
                        if (A06[6].charAt(8) == 'I') {
                            break;
                        }
                        String[] strArr = A06;
                        strArr[3] = "nG";
                        strArr[7] = "TD";
                        if (i < i2) {
                            A00(eq, t8.A03[i], j);
                            i += 2;
                        } else {
                            return;
                        }
                    }
                    throw new RuntimeException();
                } finally {
                    AnonymousClass2M.A00();
                }
            }
        }
    }

    public static boolean A09(C0469Eq eq, int i) {
        int A072 = eq.A01.A07();
        for (int i2 = 0; i2 < A072; i2++) {
            AbstractC02274c A0G = C0469Eq.A0G(eq.A01.A0B(i2));
            if (A0G.A03 == i && !A0G.A0c()) {
                return true;
            }
        }
        return false;
    }

    public final void A0A(C0469Eq eq) {
        this.A02.add(eq);
    }

    public final void A0B(C0469Eq eq) {
        this.A02.remove(eq);
    }

    public final void A0C(C0469Eq eq, int i, int i2) {
        if (eq.isAttachedToWindow() && this.A01 == 0) {
            this.A01 = eq.getNanoTime();
            eq.post(this);
        }
        eq.A02.A04(i, i2);
    }

    public final void run() {
        try {
            AnonymousClass2M.A01(A01(18, 11, 2));
            if (!this.A02.isEmpty()) {
                int size = this.A02.size();
                long j = 0;
                for (int i = 0; i < size; i++) {
                    C0469Eq eq = this.A02.get(i);
                    if (eq.getWindowVisibility() == 0) {
                        j = Math.max(eq.getDrawingTime(), j);
                    }
                }
                if (j == 0) {
                    this.A01 = 0;
                    if (A06[5].length() != 17) {
                        A06[5] = "H4nD1dOrFb1";
                        AnonymousClass2M.A00();
                        return;
                    }
                    throw new RuntimeException();
                }
                A06(TimeUnit.MILLISECONDS.toNanos(j) + this.A00);
                this.A01 = 0;
                AnonymousClass2M.A00();
            }
        } finally {
            this.A01 = 0;
            AnonymousClass2M.A00();
        }
    }
}
