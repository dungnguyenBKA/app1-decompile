package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.trackselection.DefaultTrackSelector$Parameters;

/* renamed from: com.facebook.ads.redexgen.X.Gv  reason: case insensitive filesystem */
public final class C0524Gv implements Comparable<C0524Gv> {
    public static String[] A07;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final DefaultTrackSelector$Parameters A06;

    static {
        A00();
    }

    public static void A00() {
        A07 = new String[]{"UOhnAWHUvWrKh39blc2", "rJoZ4rjs3", "mwxErCj8CFXQtRdeT7I", "OMBsSVN1m", "xKR0iM7hb", "rY23JmNnbt4", "7JhRM9", "FTdecT"};
    }

    public C0524Gv(Format format, DefaultTrackSelector$Parameters defaultTrackSelector$Parameters, int i) {
        this.A06 = defaultTrackSelector$Parameters;
        int i2 = 0;
        this.A05 = C0395Bb.A0I(i, false) ? 1 : 0;
        this.A03 = C0395Bb.A0L(format, defaultTrackSelector$Parameters.A07) ? 1 : 0;
        this.A02 = (format.A0D & 1) != 0 ? 1 : i2;
        this.A01 = format.A05;
        this.A04 = format.A0C;
        this.A00 = format.A04;
    }

    /* renamed from: A01 */
    public final int compareTo(C0524Gv gv) {
        int i = this.A05;
        int i2 = gv.A05;
        if (i != i2) {
            return C0395Bb.A02(i, i2);
        }
        int i3 = this.A03;
        int i4 = gv.A03;
        if (i3 != i4) {
            return C0395Bb.A02(i3, i4);
        }
        int i5 = this.A02;
        int i6 = gv.A02;
        if (i5 != i6) {
            return C0395Bb.A02(i5, i6);
        }
        if (this.A06.A0D) {
            return C0395Bb.A02(gv.A00, this.A00);
        }
        int i7 = 1;
        if (this.A05 != 1) {
            i7 = -1;
        }
        int i8 = this.A01;
        int i9 = gv.A01;
        String[] strArr = A07;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A07[3] = "q1nzmC2W0";
        if (i8 != i9) {
            return C0395Bb.A02(i8, i9) * i7;
        }
        int i10 = this.A04;
        int i11 = gv.A04;
        if (i10 != i11) {
            return C0395Bb.A02(i10, i11) * i7;
        }
        return C0395Bb.A02(this.A00, gv.A00) * i7;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0524Gv gv = (C0524Gv) obj;
        if (this.A05 == gv.A05 && this.A03 == gv.A03 && this.A02 == gv.A02 && this.A01 == gv.A01 && this.A04 == gv.A04) {
            int i = this.A00;
            if (A07[5].length() != 11) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[0] = "5gFFNpUtyAKNtlVcilC";
            strArr[2] = "oFDw9vE2Y7jHYxyqfLD";
            if (i == gv.A00) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((this.A05 * 31) + this.A03) * 31) + this.A02) * 31) + this.A01) * 31) + this.A04) * 31) + this.A00;
    }
}
