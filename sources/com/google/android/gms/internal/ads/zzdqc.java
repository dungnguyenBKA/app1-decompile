package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;

final class zzdqc {
    private int zzhpe = 0;
    private final long zzhpf;
    private final zzdqb zzhpg = new zzdqb();
    private long zzhph;
    private int zzhpi = 0;
    private int zzhpj = 0;

    public zzdqc() {
        long a = zzr.zzky().a();
        this.zzhpf = a;
        this.zzhph = a;
    }

    public final long getCreationTimeMillis() {
        return this.zzhpf;
    }

    public final long zzavq() {
        return this.zzhph;
    }

    public final int zzavr() {
        return this.zzhpi;
    }

    public final String zzawd() {
        StringBuilder q = ic.q("Created: ");
        q.append(this.zzhpf);
        q.append(" Last accessed: ");
        q.append(this.zzhph);
        q.append(" Accesses: ");
        q.append(this.zzhpi);
        q.append("\nEntries retrieved: Valid: ");
        q.append(this.zzhpj);
        q.append(" Stale: ");
        q.append(this.zzhpe);
        return q.toString();
    }

    public final void zzawn() {
        this.zzhph = zzr.zzky().a();
        this.zzhpi++;
    }

    public final void zzawo() {
        this.zzhpj++;
        this.zzhpg.zzhpd = true;
    }

    public final void zzawp() {
        this.zzhpe++;
        this.zzhpg.zzhpe++;
    }

    public final zzdqb zzawq() {
        zzdqb zzdqb = (zzdqb) this.zzhpg.clone();
        zzdqb zzdqb2 = this.zzhpg;
        zzdqb2.zzhpd = false;
        zzdqb2.zzhpe = 0;
        return zzdqb;
    }
}
