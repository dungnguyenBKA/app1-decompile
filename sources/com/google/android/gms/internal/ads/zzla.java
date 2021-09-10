package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzla {
    public int index;
    public final int length;
    public int zzawu;
    public long zzawv;
    private final boolean zzaww;
    private final zzpn zzawx;
    private final zzpn zzawy;
    private int zzawz;
    private int zzaxa;

    public zzla(zzpn zzpn, zzpn zzpn2, boolean z) {
        this.zzawy = zzpn;
        this.zzawx = zzpn2;
        this.zzaww = z;
        zzpn2.zzbi(12);
        this.length = zzpn2.zzja();
        zzpn.zzbi(12);
        this.zzaxa = zzpn.zzja();
        zzpg.checkState(zzpn.readInt() != 1 ? false : true, "first_chunk must be 1");
        this.index = -1;
    }

    public final boolean zzha() {
        long j;
        int i = this.index + 1;
        this.index = i;
        if (i == this.length) {
            return false;
        }
        if (this.zzaww) {
            j = this.zzawx.zzjb();
        } else {
            j = this.zzawx.zzix();
        }
        this.zzawv = j;
        if (this.index == this.zzawz) {
            this.zzawu = this.zzawy.zzja();
            this.zzawy.zzbj(4);
            int i2 = this.zzaxa - 1;
            this.zzaxa = i2;
            this.zzawz = i2 > 0 ? this.zzawy.zzja() - 1 : -1;
        }
        return true;
    }
}
