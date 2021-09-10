package com.google.android.gms.internal.ads;

import android.net.Uri;

final class zzmv implements zzpb {
    private final Uri uri;
    private final zzon zzaop;
    private final /* synthetic */ zzms zzbdl;
    private final zzmy zzbdt;
    private final zzpi zzbdu;
    private final zzkg zzben = new zzkg();
    private volatile boolean zzbeo;
    private boolean zzbep = true;
    private long zzbeq;
    private long zzco = -1;

    public zzmv(zzms zzms, Uri uri2, zzon zzon, zzmy zzmy, zzpi zzpi) {
        this.zzbdl = zzms;
        this.uri = (Uri) zzpg.checkNotNull(uri2);
        this.zzaop = (zzon) zzpg.checkNotNull(zzon);
        this.zzbdt = (zzmy) zzpg.checkNotNull(zzmy);
        this.zzbdu = zzpi;
    }

    @Override // com.google.android.gms.internal.ads.zzpb
    public final void cancelLoad() {
        this.zzbeo = true;
    }

    public final void zze(long j, long j2) {
        this.zzben.position = j;
        this.zzbeq = j2;
        this.zzbep = true;
    }

    @Override // com.google.android.gms.internal.ads.zzpb
    public final boolean zzhx() {
        return this.zzbeo;
    }

    @Override // com.google.android.gms.internal.ads.zzpb
    public final void zzhy() {
        Throwable th;
        int i = 0;
        while (i == 0 && !this.zzbeo) {
            zzjx zzjx = null;
            try {
                long j = this.zzben.position;
                long zza = this.zzaop.zza(new zzos(this.uri, j, -1, this.zzbdl.zzbdq));
                this.zzco = zza;
                if (zza != -1) {
                    this.zzco = zza + j;
                }
                zzjx zzjx2 = new zzjx(this.zzaop, j, this.zzco);
                try {
                    zzka zza2 = this.zzbdt.zza(zzjx2, this.zzaop.getUri());
                    if (this.zzbep) {
                        zza2.zzc(j, this.zzbeq);
                        this.zzbep = false;
                    }
                    while (i == 0 && !this.zzbeo) {
                        this.zzbdu.block();
                        i = zza2.zza(zzjx2, this.zzben);
                        if (zzjx2.getPosition() > this.zzbdl.zzbdr + j) {
                            j = zzjx2.getPosition();
                            this.zzbdu.zziu();
                            this.zzbdl.handler.post(this.zzbdl.zzbdw);
                        }
                    }
                    if (i == 1) {
                        i = 0;
                    } else {
                        this.zzben.position = zzjx2.getPosition();
                    }
                    zzpt.zza(this.zzaop);
                } catch (Throwable th2) {
                    th = th2;
                    zzjx = zzjx2;
                    this.zzben.position = zzjx.getPosition();
                    zzpt.zza(this.zzaop);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (!(i == 1 || zzjx == null)) {
                    this.zzben.position = zzjx.getPosition();
                }
                zzpt.zza(this.zzaop);
                throw th;
            }
        }
    }
}
