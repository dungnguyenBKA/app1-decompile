package com.google.android.gms.internal.ads;

import android.util.Log;

final class zzhp {
    public final int index;
    private final zzhy[] zzaeq;
    private final zzoh zzaer;
    private final zzib[] zzafn;
    private final zzhx zzafo;
    private final zzne zzafu;
    public int zzagi;
    public long zzagj;
    public final zznc zzagm;
    public final Object zzagn;
    public final zznn[] zzago;
    private final boolean[] zzagp;
    public final long zzagq;
    public boolean zzagr;
    public boolean zzags;
    public boolean zzagt;
    public zzhp zzagu;
    public zzoj zzagv;
    private zzoj zzagw;

    public zzhp(zzhy[] zzhyArr, zzib[] zzibArr, long j, zzoh zzoh, zzhx zzhx, zzne zzne, Object obj, int i, int i2, boolean z, long j2) {
        this.zzaeq = zzhyArr;
        this.zzafn = zzibArr;
        this.zzagq = j;
        this.zzaer = zzoh;
        this.zzafo = zzhx;
        this.zzafu = zzne;
        this.zzagn = zzpg.checkNotNull(obj);
        this.index = i;
        this.zzagi = i2;
        this.zzagr = z;
        this.zzagj = j2;
        this.zzago = new zznn[zzhyArr.length];
        this.zzagp = new boolean[zzhyArr.length];
        this.zzagm = zzne.zza(i2, zzhx.zzfd());
    }

    public final void release() {
        try {
            this.zzafu.zzb(this.zzagm);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }

    public final long zza(long j, boolean z, boolean[] zArr) {
        zzoi zzoi = this.zzagv.zzbhy;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzoi.length) {
                break;
            }
            boolean[] zArr2 = this.zzagp;
            if (z || !this.zzagv.zza(this.zzagw, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long zza = this.zzagm.zza(zzoi.zzim(), this.zzagp, this.zzago, zArr, j);
        this.zzagw = this.zzagv;
        this.zzagt = false;
        int i2 = 0;
        while (true) {
            zznn[] zznnArr = this.zzago;
            if (i2 < zznnArr.length) {
                if (zznnArr[i2] != null) {
                    zzpg.checkState(zzoi.zzbe(i2) != null);
                    this.zzagt = true;
                } else {
                    zzpg.checkState(zzoi.zzbe(i2) == null);
                }
                i2++;
            } else {
                this.zzafo.zza(this.zzaeq, this.zzagv.zzbhx, zzoi);
                return zza;
            }
        }
    }

    public final long zzb(long j, boolean z) {
        return zza(j, false, new boolean[this.zzaeq.length]);
    }

    public final void zzc(int i, boolean z) {
        this.zzagi = i;
        this.zzagr = z;
    }

    public final long zzew() {
        return this.zzagq - this.zzagj;
    }

    public final boolean zzex() {
        if (this.zzags) {
            return !this.zzagt || this.zzagm.zzhr() == Long.MIN_VALUE;
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x002a A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x002b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzey() {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzoh r0 = r6.zzaer
            com.google.android.gms.internal.ads.zzib[] r1 = r6.zzafn
            com.google.android.gms.internal.ads.zznc r2 = r6.zzagm
            com.google.android.gms.internal.ads.zznu r2 = r2.zzhp()
            com.google.android.gms.internal.ads.zzoj r0 = r0.zza(r1, r2)
            com.google.android.gms.internal.ads.zzoj r1 = r6.zzagw
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x0016
        L_0x0014:
            r1 = 0
            goto L_0x0028
        L_0x0016:
            r4 = 0
        L_0x0017:
            com.google.android.gms.internal.ads.zzoi r5 = r0.zzbhy
            int r5 = r5.length
            if (r4 >= r5) goto L_0x0027
            boolean r5 = r0.zza(r1, r4)
            if (r5 != 0) goto L_0x0024
            goto L_0x0014
        L_0x0024:
            int r4 = r4 + 1
            goto L_0x0017
        L_0x0027:
            r1 = 1
        L_0x0028:
            if (r1 == 0) goto L_0x002b
            return r3
        L_0x002b:
            r6.zzagv = r0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhp.zzey():boolean");
    }
}
