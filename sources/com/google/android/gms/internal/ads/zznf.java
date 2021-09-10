package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

public final class zznf implements zzne {
    private final zzie zzaew = new zzie();
    private final zzne[] zzbey;
    private final ArrayList<zzne> zzbez;
    private zznd zzbfa;
    private zzid zzbfb;
    private Object zzbfc;
    private int zzbfd = -1;
    private zznh zzbfe;

    public zznf(zzne... zzneArr) {
        this.zzbey = zzneArr;
        this.zzbez = new ArrayList<>(Arrays.asList(zzneArr));
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zza(zzhh zzhh, boolean z, zznd zznd) {
        this.zzbfa = zznd;
        int i = 0;
        while (true) {
            zzne[] zzneArr = this.zzbey;
            if (i < zzneArr.length) {
                zzneArr[i].zza(zzhh, false, new zzni(this, i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzb(zznc zznc) {
        zzng zzng = (zzng) zznc;
        int i = 0;
        while (true) {
            zzne[] zzneArr = this.zzbey;
            if (i < zzneArr.length) {
                zzneArr[i].zzb(zzng.zzbff[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzhz() {
        zznh zznh = this.zzbfe;
        if (zznh == null) {
            for (zzne zzne : this.zzbey) {
                zzne.zzhz();
            }
            return;
        }
        throw zznh;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzia() {
        for (zzne zzne : this.zzbey) {
            zzne.zzia();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final zznc zza(int i, zzol zzol) {
        int length = this.zzbey.length;
        zznc[] zzncArr = new zznc[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzncArr[i2] = this.zzbey[i2].zza(i, zzol);
        }
        return new zzng(zzncArr);
    }

    /* access modifiers changed from: private */
    public final void zza(int i, zzid zzid, Object obj) {
        zznh zznh;
        if (this.zzbfe == null) {
            int zzff = zzid.zzff();
            for (int i2 = 0; i2 < zzff; i2++) {
                zzid.zza(i2, this.zzaew, false);
            }
            if (this.zzbfd == -1) {
                this.zzbfd = zzid.zzfg();
            } else if (zzid.zzfg() != this.zzbfd) {
                zznh = new zznh(1);
                this.zzbfe = zznh;
            }
            zznh = null;
            this.zzbfe = zznh;
        }
        if (this.zzbfe == null) {
            this.zzbez.remove(this.zzbey[i]);
            if (i == 0) {
                this.zzbfb = zzid;
                this.zzbfc = obj;
            }
            if (this.zzbez.isEmpty()) {
                this.zzbfa.zzb(this.zzbfb, this.zzbfc);
            }
        }
    }
}
