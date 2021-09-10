package com.google.android.gms.internal.ads;

final class zzdpd {
    private final zzdpg zzhnb = new zzdpg();
    private int zzhnc;
    private int zzhnd;
    private int zzhne;
    private int zzhnf;
    private int zzhng;

    zzdpd() {
    }

    public final void zzavx() {
        this.zzhne++;
    }

    public final void zzavy() {
        this.zzhnf++;
    }

    public final void zzavz() {
        this.zzhnc++;
        this.zzhnb.zzhnv = true;
    }

    public final void zzawa() {
        this.zzhnd++;
        this.zzhnb.zzhnw = true;
    }

    public final void zzawb() {
        this.zzhng++;
    }

    public final zzdpg zzawc() {
        zzdpg zzdpg = (zzdpg) this.zzhnb.clone();
        zzdpg zzdpg2 = this.zzhnb;
        zzdpg2.zzhnv = false;
        zzdpg2.zzhnw = false;
        return zzdpg;
    }

    public final String zzawd() {
        StringBuilder q = ic.q("\n\tPool does not exist: ");
        q.append(this.zzhne);
        q.append("\n\tNew pools created: ");
        q.append(this.zzhnc);
        q.append("\n\tPools removed: ");
        q.append(this.zzhnd);
        q.append("\n\tEntries added: ");
        q.append(this.zzhng);
        q.append("\n\tNo entries retrieved: ");
        return ic.k(q, this.zzhnf, "\n");
    }
}
