package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.IdentityHashMap;

final class zzng implements zznb, zznc {
    private zznu zzafg;
    private zznb zzbdy;
    public final zznc[] zzbff;
    private final IdentityHashMap<zznn, Integer> zzbfg = new IdentityHashMap<>();
    private int zzbfh;
    private zznc[] zzbfi;
    private zznq zzbfj;

    public zzng(zznc... zzncArr) {
        this.zzbff = zzncArr;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zza(zznb zznb, long j) {
        this.zzbdy = zznb;
        zznc[] zzncArr = this.zzbff;
        this.zzbfh = zzncArr.length;
        for (zznc zznc : zzncArr) {
            zznc.zza(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc, com.google.android.gms.internal.ads.zznq
    public final boolean zzee(long j) {
        return this.zzbfj.zzee(j);
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zzef(long j) {
        for (zznc zznc : this.zzbfi) {
            zznc.zzef(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzeg(long j) {
        long zzeg = this.zzbfi[0].zzeg(j);
        int i = 1;
        while (true) {
            zznc[] zzncArr = this.zzbfi;
            if (i >= zzncArr.length) {
                return zzeg;
            }
            if (zzncArr[i].zzeg(zzeg) == zzeg) {
                i++;
            } else {
                throw new IllegalStateException("Children seeked to different positions");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc, com.google.android.gms.internal.ads.zznq
    public final long zzhn() {
        return this.zzbfj.zzhn();
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zzho() {
        for (zznc zznc : this.zzbff) {
            zznc.zzho();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final zznu zzhp() {
        return this.zzafg;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzhq() {
        long zzhq = this.zzbff[0].zzhq();
        int i = 1;
        while (true) {
            zznc[] zzncArr = this.zzbff;
            if (i >= zzncArr.length) {
                if (zzhq != -9223372036854775807L) {
                    zznc[] zzncArr2 = this.zzbfi;
                    for (zznc zznc : zzncArr2) {
                        if (zznc != this.zzbff[0] && zznc.zzeg(zzhq) != zzhq) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return zzhq;
            } else if (zzncArr[i].zzhq() == -9223372036854775807L) {
                i++;
            } else {
                throw new IllegalStateException("Child reported discontinuity");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzhr() {
        long j = Long.MAX_VALUE;
        for (zznc zznc : this.zzbfi) {
            long zzhr = zznc.zzhr();
            if (zzhr != Long.MIN_VALUE) {
                j = Math.min(j, zzhr);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zza(zzog[] zzogArr, boolean[] zArr, zznn[] zznnArr, boolean[] zArr2, long j) {
        int i;
        zznn[] zznnArr2 = zznnArr;
        int[] iArr = new int[zzogArr.length];
        int[] iArr2 = new int[zzogArr.length];
        for (int i2 = 0; i2 < zzogArr.length; i2++) {
            if (zznnArr2[i2] == null) {
                i = -1;
            } else {
                i = this.zzbfg.get(zznnArr2[i2]).intValue();
            }
            iArr[i2] = i;
            iArr2[i2] = -1;
            if (zzogArr[i2] != null) {
                zznr zzil = zzogArr[i2].zzil();
                int i3 = 0;
                while (true) {
                    zznc[] zzncArr = this.zzbff;
                    if (i3 >= zzncArr.length) {
                        break;
                    } else if (zzncArr[i3].zzhp().zza(zzil) != -1) {
                        iArr2[i2] = i3;
                        break;
                    } else {
                        i3++;
                    }
                }
            }
        }
        this.zzbfg.clear();
        int length = zzogArr.length;
        zznn[] zznnArr3 = new zznn[length];
        zznn[] zznnArr4 = new zznn[zzogArr.length];
        zzog[] zzogArr2 = new zzog[zzogArr.length];
        ArrayList arrayList = new ArrayList(this.zzbff.length);
        long j2 = j;
        int i4 = 0;
        while (i4 < this.zzbff.length) {
            for (int i5 = 0; i5 < zzogArr.length; i5++) {
                zzog zzog = null;
                zznnArr4[i5] = iArr[i5] == i4 ? zznnArr2[i5] : null;
                if (iArr2[i5] == i4) {
                    zzog = zzogArr[i5];
                }
                zzogArr2[i5] = zzog;
            }
            long zza = this.zzbff[i4].zza(zzogArr2, zArr, zznnArr4, zArr2, j2);
            if (i4 == 0) {
                j2 = zza;
            } else if (zza != j2) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z = false;
            for (int i6 = 0; i6 < zzogArr.length; i6++) {
                boolean z2 = true;
                if (iArr2[i6] == i4) {
                    zzpg.checkState(zznnArr4[i6] != null);
                    zznnArr3[i6] = zznnArr4[i6];
                    this.zzbfg.put(zznnArr4[i6], Integer.valueOf(i4));
                    z = true;
                } else if (iArr[i6] == i4) {
                    if (zznnArr4[i6] != null) {
                        z2 = false;
                    }
                    zzpg.checkState(z2);
                }
            }
            if (z) {
                arrayList.add(this.zzbff[i4]);
            }
            i4++;
            arrayList = arrayList;
            zzogArr2 = zzogArr2;
            zznnArr2 = zznnArr;
        }
        System.arraycopy(zznnArr3, 0, zznnArr2, 0, length);
        zznc[] zzncArr2 = new zznc[arrayList.size()];
        this.zzbfi = zzncArr2;
        arrayList.toArray(zzncArr2);
        this.zzbfj = new zzmp(this.zzbfi);
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zznb
    public final void zza(zznc zznc) {
        int i = this.zzbfh - 1;
        this.zzbfh = i;
        if (i <= 0) {
            int i2 = 0;
            for (zznc zznc2 : this.zzbff) {
                i2 += zznc2.zzhp().length;
            }
            zznr[] zznrArr = new zznr[i2];
            int i3 = 0;
            for (zznc zznc3 : this.zzbff) {
                zznu zzhp = zznc3.zzhp();
                int i4 = zzhp.length;
                int i5 = 0;
                while (i5 < i4) {
                    zznrArr[i3] = zzhp.zzbc(i5);
                    i5++;
                    i3++;
                }
            }
            this.zzafg = new zznu(zznrArr);
            this.zzbdy.zza((zznc) this);
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zznq] */
    @Override // com.google.android.gms.internal.ads.zznp
    public final /* synthetic */ void zza(zznc zznc) {
        if (this.zzafg != null) {
            this.zzbdy.zza((zznq) this);
        }
    }
}
