package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;

public final class D2 {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final Format A07;
    @Nullable
    public final long[] A08;
    @Nullable
    public final long[] A09;
    @Nullable
    public final D3[] A0A;

    public D2(int i, int i2, long j, long j2, long j3, Format format, int i3, @Nullable D3[] d3Arr, int i4, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.A00 = i;
        this.A03 = i2;
        this.A06 = j;
        this.A05 = j2;
        this.A04 = j3;
        this.A07 = format;
        this.A02 = i3;
        this.A0A = d3Arr;
        this.A01 = i4;
        this.A08 = jArr;
        this.A09 = jArr2;
    }

    public final D3 A00(int i) {
        D3[] d3Arr = this.A0A;
        if (d3Arr == null) {
            return null;
        }
        return d3Arr[i];
    }
}
