package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzazn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzazn> CREATOR = new zzazq();
    public String zzbrp;
    public int zzehy;
    public int zzehz;
    public boolean zzeia;
    public boolean zzeib;

    public zzazn(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public static zzazn zzaab() {
        return new zzazn(g.GOOGLE_PLAY_SERVICES_VERSION_CODE, g.GOOGLE_PLAY_SERVICES_VERSION_CODE, true);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 2, this.zzbrp, false);
        b.k(parcel, 3, this.zzehy);
        b.k(parcel, 4, this.zzehz);
        b.c(parcel, 5, this.zzeia);
        b.c(parcel, 6, this.zzeib);
        b.b(parcel, a);
    }

    public zzazn(int i, int i2, boolean z, boolean z2) {
        this(204204000, i2, true, false, false);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private zzazn(int r8, int r9, boolean r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            if (r10 == 0) goto L_0x0005
            java.lang.String r11 = "0"
            goto L_0x0007
        L_0x0005:
            java.lang.String r11 = "1"
        L_0x0007:
            int r12 = r11.length()
            int r12 = r12 + 36
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r12)
            java.lang.String r12 = "afma-sdk-a-v"
            r0.append(r12)
            r0.append(r8)
            java.lang.String r12 = "."
            r0.append(r12)
            r0.append(r9)
            java.lang.String r2 = defpackage.ic.l(r0, r12, r11)
            r6 = 0
            r1 = r7
            r3 = r8
            r4 = r9
            r5 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazn.<init>(int, int, boolean, boolean, boolean):void");
    }

    zzazn(String str, int i, int i2, boolean z, boolean z2) {
        this.zzbrp = str;
        this.zzehy = i;
        this.zzehz = i2;
        this.zzeia = z;
        this.zzeib = z2;
    }
}
