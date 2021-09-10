package com.facebook.ads.redexgen.X;

public final class I9 {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final long A07;

    public I9(byte[] bArr, int i) {
        IL il = new IL(bArr);
        il.A08(i * 8);
        this.A04 = il.A05(16);
        this.A02 = il.A05(16);
        this.A05 = il.A05(24);
        this.A03 = il.A05(24);
        this.A06 = il.A05(20);
        this.A01 = il.A05(3) + 1;
        this.A00 = il.A05(5) + 1;
        this.A07 = ((((long) il.A05(4)) & 15) << 32) | (((long) il.A05(32)) & 4294967295L);
    }

    public final int A00() {
        return this.A00 * this.A06;
    }

    public final long A01() {
        return (this.A07 * 1000000) / ((long) this.A06);
    }
}
