package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

public final class zzbdp extends zzbdd implements zzpd<zzon> {
    private String url;
    private ByteBuffer zzamk;
    private final String zzbvs;
    private final int zzbvt;
    private final zzbbl zzenf;
    private boolean zzeqe;
    private final zzbdq zzeqf = new zzbdq();
    private final zzbcv zzeqg = new zzbcv();
    private boolean zzeqh;
    private final Object zzeqi = new Object();
    private boolean zzeqj;

    public zzbdp(zzbbo zzbbo, zzbbl zzbbl) {
        super(zzbbo);
        this.zzenf = zzbbl;
        this.zzbvs = zzbbo != null ? zzbbo.zzabg() : "";
        this.zzbvt = zzbbo != null ? zzbbo.zzabh() : 0;
    }

    private final void zzaas() {
        int zzacn = (int) this.zzeqf.zzacn();
        int zzq = (int) this.zzeqg.zzq(this.zzamk);
        int position = this.zzamk.position();
        int round = Math.round((((float) position) / ((float) zzacn)) * ((float) zzq));
        boolean z = round > 0;
        int zzacj = zzbck.zzacj();
        int zzack = zzbck.zzack();
        String str = this.url;
        zza(str, zzfh(str), position, zzacn, (long) round, (long) zzq, z, zzacj, zzack);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void abort() {
        this.zzeqe = true;
    }

    public final ByteBuffer getByteBuffer() {
        synchronized (this.zzeqi) {
            ByteBuffer byteBuffer = this.zzamk;
            if (byteBuffer != null && !this.zzeqh) {
                byteBuffer.flip();
                this.zzeqh = true;
            }
            this.zzeqe = true;
        }
        return this.zzamk;
    }

    public final String getUrl() {
        return this.url;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.google.android.gms.internal.ads.zzos] */
    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* synthetic */ void zza(zzon zzon, zzos zzos) {
        zzon zzon2 = zzon;
        if (zzon2 instanceof zzou) {
            this.zzeqf.zza((zzou) zzon2);
        }
    }

    public final boolean zzacm() {
        return this.zzeqj;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int] */
    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* bridge */ /* synthetic */ void zzc(zzon zzon, int i) {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* bridge */ /* synthetic */ void zze(zzon zzon) {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:56:0x014b, code lost:
        r0 = th;
     */
    @Override // com.google.android.gms.internal.ads.zzbdd
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzfg(java.lang.String r23) {
        /*
        // Method dump skipped, instructions count: 412
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdp.zzfg(java.lang.String):boolean");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzbdd
    public final String zzfh(String str) {
        String valueOf = String.valueOf(super.zzfh(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }
}
