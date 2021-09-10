package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

public final class zzepw {
    public static final zzepw zzjbr = new zzepw(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzepw zzjbs = new zzepw(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzepw zzjbt = new zzepw(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzepw zzjbu = new zzepw(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private final double a;
    private final double b;
    private final double c;
    private final double d;
    private final double w;
    private final double zzjbn;
    private final double zzjbo;
    private final double zzjbp;
    private final double zzjbq;

    private zzepw(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        this.zzjbn = d6;
        this.zzjbo = d7;
        this.w = d8;
        this.a = d2;
        this.b = d3;
        this.c = d4;
        this.d = d5;
        this.zzjbp = d9;
        this.zzjbq = d10;
    }

    public static zzepw zzs(ByteBuffer byteBuffer) {
        double zzi = zzbp.zzi(byteBuffer);
        double zzi2 = zzbp.zzi(byteBuffer);
        double zzj = zzbp.zzj(byteBuffer);
        return new zzepw(zzi, zzi2, zzbp.zzi(byteBuffer), zzbp.zzi(byteBuffer), zzj, zzbp.zzj(byteBuffer), zzbp.zzj(byteBuffer), zzbp.zzi(byteBuffer), zzbp.zzi(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzepw.class != obj.getClass()) {
            return false;
        }
        zzepw zzepw = (zzepw) obj;
        return Double.compare(zzepw.a, this.a) == 0 && Double.compare(zzepw.b, this.b) == 0 && Double.compare(zzepw.c, this.c) == 0 && Double.compare(zzepw.d, this.d) == 0 && Double.compare(zzepw.zzjbp, this.zzjbp) == 0 && Double.compare(zzepw.zzjbq, this.zzjbq) == 0 && Double.compare(zzepw.zzjbn, this.zzjbn) == 0 && Double.compare(zzepw.zzjbo, this.zzjbo) == 0 && Double.compare(zzepw.w, this.w) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zzjbn);
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzjbo);
        long doubleToLongBits3 = Double.doubleToLongBits(this.w);
        long doubleToLongBits4 = Double.doubleToLongBits(this.a);
        long doubleToLongBits5 = Double.doubleToLongBits(this.b);
        long doubleToLongBits6 = Double.doubleToLongBits(this.c);
        long doubleToLongBits7 = Double.doubleToLongBits(this.d);
        long doubleToLongBits8 = Double.doubleToLongBits(this.zzjbp);
        long doubleToLongBits9 = Double.doubleToLongBits(this.zzjbq);
        return (((((((((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)))) * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)))) * 31) + ((int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32)))) * 31) + ((int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32)))) * 31) + ((int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32)))) * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)))) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(zzjbr)) {
            return "Rotate 0°";
        }
        if (equals(zzjbs)) {
            return "Rotate 90°";
        }
        if (equals(zzjbt)) {
            return "Rotate 180°";
        }
        if (equals(zzjbu)) {
            return "Rotate 270°";
        }
        double d2 = this.zzjbn;
        double d3 = this.zzjbo;
        double d4 = this.w;
        double d5 = this.a;
        double d6 = this.b;
        double d7 = this.c;
        double d8 = this.d;
        double d9 = this.zzjbp;
        double d10 = this.zzjbq;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d2);
        sb.append(", v=");
        sb.append(d3);
        sb.append(", w=");
        sb.append(d4);
        sb.append(", a=");
        sb.append(d5);
        sb.append(", b=");
        sb.append(d6);
        sb.append(", c=");
        sb.append(d7);
        sb.append(", d=");
        sb.append(d8);
        sb.append(", tx=");
        sb.append(d9);
        sb.append(", ty=");
        sb.append(d10);
        sb.append("}");
        return sb.toString();
    }
}
