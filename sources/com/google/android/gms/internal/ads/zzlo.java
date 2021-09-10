package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Stack;

public final class zzlo implements zzka, zzkf {
    private static final zzkb zzapk = new zzln();
    private static final int zzazz = zzpt.zzbh("qt  ");
    private long zzaip;
    private final zzpn zzapr = new zzpn(zzpm.zzbjt);
    private final zzpn zzaps = new zzpn(4);
    private int zzarg;
    private int zzarh;
    private zzkc zzark;
    private final zzpn zzaxr = new zzpn(16);
    private final Stack<zzkv> zzaxt = new Stack<>();
    private int zzaxv;
    private int zzaxw;
    private long zzaxx;
    private int zzaxy;
    private zzpn zzaxz;
    private zzlq[] zzbaa;
    private boolean zzbab;

    private final void zzeb(long j) {
        zzmh zzmh;
        zzke zzke;
        zzls zza;
        while (!this.zzaxt.isEmpty() && this.zzaxt.peek().zzasu == j) {
            zzkv pop = this.zzaxt.pop();
            if (pop.type == zzkw.zzaty) {
                long j2 = -9223372036854775807L;
                ArrayList arrayList = new ArrayList();
                long j3 = Long.MAX_VALUE;
                zzmh zzmh2 = null;
                zzke zzke2 = new zzke();
                zzky zzap = pop.zzap(zzkw.zzavx);
                if (!(zzap == null || (zzmh2 = zzkx.zza(zzap, this.zzbab)) == null)) {
                    zzke2.zzb(zzmh2);
                }
                int i = 0;
                while (i < pop.zzasw.size()) {
                    zzkv zzkv = pop.zzasw.get(i);
                    if (zzkv.type == zzkw.zzaua && (zza = zzkx.zza(zzkv, pop.zzap(zzkw.zzatz), -9223372036854775807L, (zzjo) null, this.zzbab)) != null) {
                        zzlt zza2 = zzkx.zza(zza, zzkv.zzaq(zzkw.zzaub).zzaq(zzkw.zzauc).zzaq(zzkw.zzaud), zzke2);
                        if (zza2.zzaxc != 0) {
                            zzlq zzlq = new zzlq(zza, zza2, this.zzark.zzc(i, zza.type));
                            zzht zzv = zza.zzahz.zzv(zza2.zzayj + 30);
                            if (zza.type == 1) {
                                if (zzke2.zzgt()) {
                                    zzv = zzv.zzb(zzke2.zzahr, zzke2.zzahs);
                                }
                                if (zzmh2 != null) {
                                    zzv = zzv.zza(zzmh2);
                                }
                            }
                            zzlq.zzbae.zze(zzv);
                            zzmh = zzmh2;
                            zzke = zzke2;
                            j2 = Math.max(j2, zza.zzaip);
                            arrayList.add(zzlq);
                            long j4 = zza2.zzaov[0];
                            if (j4 < j3) {
                                j3 = j4;
                            }
                            i++;
                            zzke2 = zzke;
                            zzmh2 = zzmh;
                        }
                    }
                    zzmh = zzmh2;
                    zzke = zzke2;
                    i++;
                    zzke2 = zzke;
                    zzmh2 = zzmh;
                }
                this.zzaip = j2;
                this.zzbaa = (zzlq[]) arrayList.toArray(new zzlq[arrayList.size()]);
                this.zzark.zzgs();
                this.zzark.zza(this);
                this.zzaxt.clear();
                this.zzaxv = 2;
            } else if (!this.zzaxt.isEmpty()) {
                this.zzaxt.peek().zza(pop);
            }
        }
        if (this.zzaxv != 2) {
            zzhb();
        }
    }

    private final void zzhb() {
        this.zzaxv = 0;
        this.zzaxy = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final long getDurationUs() {
        return this.zzaip;
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void release() {
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final boolean zza(zzjz zzjz) {
        return zzlp.zze(zzjz);
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zzc(long j, long j2) {
        this.zzaxt.clear();
        this.zzaxy = 0;
        this.zzarh = 0;
        this.zzarg = 0;
        if (j == 0) {
            zzhb();
            return;
        }
        zzlq[] zzlqArr = this.zzbaa;
        if (zzlqArr != null) {
            for (zzlq zzlq : zzlqArr) {
                zzlt zzlt = zzlq.zzbad;
                int zzec = zzlt.zzec(j2);
                if (zzec == -1) {
                    zzec = zzlt.zzed(j2);
                }
                zzlq.zzaxg = zzec;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final long zzdz(long j) {
        long j2 = Long.MAX_VALUE;
        for (zzlq zzlq : this.zzbaa) {
            zzlt zzlt = zzlq.zzbad;
            int zzec = zzlt.zzec(j);
            if (zzec == -1) {
                zzec = zzlt.zzed(j);
            }
            long j3 = zzlt.zzaov[zzec];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zza(zzkc zzkc) {
        this.zzark = zzkc;
    }

    /* JADX WARNING: Removed duplicated region for block: B:148:0x0188 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x0293 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0006 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:151:0x0006 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzka
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zza(com.google.android.gms.internal.ads.zzjz r24, com.google.android.gms.internal.ads.zzkg r25) {
        /*
        // Method dump skipped, instructions count: 660
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlo.zza(com.google.android.gms.internal.ads.zzjz, com.google.android.gms.internal.ads.zzkg):int");
    }
}
