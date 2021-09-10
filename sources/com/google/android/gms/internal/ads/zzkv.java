package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* access modifiers changed from: package-private */
public final class zzkv extends zzkw {
    public final long zzasu;
    public final List<zzky> zzasv = new ArrayList();
    public final List<zzkv> zzasw = new ArrayList();

    public zzkv(int i, long j) {
        super(i);
        this.zzasu = j;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final String toString() {
        String zzat = zzkw.zzat(this.type);
        String arrays = Arrays.toString(this.zzasv.toArray());
        String arrays2 = Arrays.toString(this.zzasw.toArray());
        StringBuilder p = ic.p(ic.m(arrays2, ic.m(arrays, ic.m(zzat, 22))), zzat, " leaves: ", arrays, " containers: ");
        p.append(arrays2);
        return p.toString();
    }

    public final void zza(zzky zzky) {
        this.zzasv.add(zzky);
    }

    public final zzky zzap(int i) {
        int size = this.zzasv.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzky zzky = this.zzasv.get(i2);
            if (zzky.type == i) {
                return zzky;
            }
        }
        return null;
    }

    public final zzkv zzaq(int i) {
        int size = this.zzasw.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzkv zzkv = this.zzasw.get(i2);
            if (zzkv.type == i) {
                return zzkv;
            }
        }
        return null;
    }

    public final void zza(zzkv zzkv) {
        this.zzasw.add(zzkv);
    }
}
