package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class FP {
    public static String[] A04;
    public final int A00;
    @Nullable
    public final FC A01;
    public final long A02;
    public final CopyOnWriteArrayList<FO> A03;

    static {
        A01();
    }

    public static void A01() {
        A04 = new String[]{"HGHzNcawqnVFgJx8ceQNwcxcn1SDkpDb", "AD2ta0a", "biSUTEi4nYJndXTTLsT", "38FOXeSW4cnwnxdXp60to", "WtyRCcfaPM", "iLolo35", "fvJAwdggv90DLF", "FbA7S8K"};
    }

    public FP() {
        this(new CopyOnWriteArrayList(), 0, null, 0);
    }

    public FP(CopyOnWriteArrayList<FO> copyOnWriteArrayList, int i, @Nullable FC fc, long j) {
        this.A03 = copyOnWriteArrayList;
        this.A00 = i;
        this.A01 = fc;
        this.A02 = j;
    }

    private long A00(long j) {
        long A012 = C03639u.A01(j);
        if (A012 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j2 = this.A02;
        if (A04[2].length() != 19) {
            throw new RuntimeException();
        }
        A04[7] = "vQJR5ZN";
        return j2 + A012;
    }

    private void A02(Handler handler, Runnable runnable) {
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    @CheckResult
    public final FP A03(int i, @Nullable FC fc, long j) {
        return new FP(this.A03, i, fc, j);
    }

    /* JADX INFO: Multiple debug info for r0v6 com.facebook.ads.redexgen.X.FO: [D('listenerAndHandler' com.facebook.ads.redexgen.X.FO), D('listener' com.facebook.ads.redexgen.X.FS)] */
    public final void A04() {
        boolean z;
        if (this.A01 != null) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        Iterator<FO> it = this.A03.iterator();
        while (it.hasNext()) {
            FO listenerAndHandler = it.next();
            A02(listenerAndHandler.A00, new FF(this, listenerAndHandler.A01));
        }
    }

    /* JADX INFO: Multiple debug info for r0v6 com.facebook.ads.redexgen.X.FO: [D('listenerAndHandler' com.facebook.ads.redexgen.X.FO), D('listener' com.facebook.ads.redexgen.X.FS)] */
    public final void A05() {
        boolean z;
        if (this.A01 != null) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        Iterator<FO> it = this.A03.iterator();
        while (it.hasNext()) {
            FO listenerAndHandler = it.next();
            A02(listenerAndHandler.A00, new FG(this, listenerAndHandler.A01));
        }
    }

    /* JADX INFO: Multiple debug info for r0v10 com.facebook.ads.redexgen.X.FO: [D('listenerAndHandler' com.facebook.ads.redexgen.X.FO), D('listener' com.facebook.ads.redexgen.X.FS)] */
    public final void A06() {
        boolean z;
        if (this.A01 != null) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        Iterator<FO> it = this.A03.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A04[7].length() != 7) {
                throw new RuntimeException();
            }
            A04[2] = "JAadAeVCHcunsRCfoQL";
            if (hasNext) {
                FO listenerAndHandler = it.next();
                A02(listenerAndHandler.A00, new FL(this, listenerAndHandler.A01));
            } else {
                return;
            }
        }
    }

    public final void A07(int i, @Nullable Format format, int i2, @Nullable Object obj, long j) {
        A0D(new FR(1, i, format, i2, obj, A00(j), -9223372036854775807L));
    }

    public final void A08(Handler handler, FS fs) {
        boolean z;
        if (handler == null || fs == null) {
            z = false;
        } else {
            z = true;
        }
        C0551Hx.A03(z);
        this.A03.add(new FO(handler, fs));
    }

    public final void A09(FQ fq, FR fr) {
        Iterator<FO> it = this.A03.iterator();
        while (it.hasNext()) {
            FO next = it.next();
            A02(next.A00, new FJ(this, next.A01, fq, fr));
        }
    }

    public final void A0A(FQ fq, FR fr) {
        Iterator<FO> it = this.A03.iterator();
        while (it.hasNext()) {
            FO next = it.next();
            A02(next.A00, new FI(this, next.A01, fq, fr));
        }
    }

    public final void A0B(FQ fq, FR fr) {
        Iterator<FO> it = this.A03.iterator();
        while (it.hasNext()) {
            FO next = it.next();
            A02(next.A00, new FH(this, next.A01, fq, fr));
        }
    }

    /* JADX INFO: Multiple debug info for r0v4 com.facebook.ads.redexgen.X.FO: [D('listenerAndHandler' com.facebook.ads.redexgen.X.FO), D('listener' com.facebook.ads.redexgen.X.FS)] */
    public final void A0C(FQ fq, FR fr, IOException iOException, boolean z) {
        Iterator<FO> it = this.A03.iterator();
        while (it.hasNext()) {
            FO listenerAndHandler = it.next();
            A02(listenerAndHandler.A00, new FK(this, listenerAndHandler.A01, fq, fr, iOException, z));
        }
    }

    public final void A0D(FR fr) {
        Iterator<FO> it = this.A03.iterator();
        while (it.hasNext()) {
            FO next = it.next();
            A02(next.A00, new FN(this, next.A01, fr));
        }
    }

    public final void A0E(FS fs) {
        Iterator<FO> it = this.A03.iterator();
        while (it.hasNext()) {
            FO next = it.next();
            if (next.A01 == fs) {
                this.A03.remove(next);
            }
        }
    }

    public final void A0F(HM hm, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3) {
        A0B(new FQ(hm, j3, 0, 0), new FR(i, i2, format, i3, obj, A00(j), A00(j2)));
    }

    public final void A0G(HM hm, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
        A09(new FQ(hm, j3, j4, j5), new FR(i, i2, format, i3, obj, A00(j), A00(j2)));
    }

    public final void A0H(HM hm, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
        A0A(new FQ(hm, j3, j4, j5), new FR(i, i2, format, i3, obj, A00(j), A00(j2)));
    }

    public final void A0I(HM hm, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
        A0C(new FQ(hm, j3, j4, j5), new FR(i, i2, format, i3, obj, A00(j), A00(j2)), iOException, z);
    }
}
