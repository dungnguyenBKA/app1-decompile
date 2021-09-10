package defpackage;

import androidx.work.a;
import androidx.work.i;
import androidx.work.m;

/* renamed from: i6  reason: default package */
public class i6 {
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0046 A[SYNTHETIC, Splitter:B:25:0x0046] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x005a A[SYNTHETIC, Splitter:B:35:0x005a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static androidx.work.d a(byte[] r6) {
        /*
        // Method dump skipped, instructions count: 109
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i6.a(byte[]):androidx.work.d");
    }

    public static a b(int i) {
        if (i == 0) {
            return a.EXPONENTIAL;
        }
        if (i == 1) {
            return a.LINEAR;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
    }

    public static i c(int i) {
        if (i == 0) {
            return i.NOT_REQUIRED;
        }
        if (i == 1) {
            return i.CONNECTED;
        }
        if (i == 2) {
            return i.UNMETERED;
        }
        if (i == 3) {
            return i.NOT_ROAMING;
        }
        if (i == 4) {
            return i.METERED;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
    }

    public static m d(int i) {
        if (i == 0) {
            return m.ENQUEUED;
        }
        if (i == 1) {
            return m.RUNNING;
        }
        if (i == 2) {
            return m.SUCCEEDED;
        }
        if (i == 3) {
            return m.FAILED;
        }
        if (i == 4) {
            return m.BLOCKED;
        }
        if (i == 5) {
            return m.CANCELLED;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to State");
    }

    public static int e(m mVar) {
        int ordinal = mVar.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 4;
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return 5;
                        }
                        throw new IllegalArgumentException("Could not convert " + mVar + " to int");
                    }
                }
            }
        }
        return i;
    }
}
