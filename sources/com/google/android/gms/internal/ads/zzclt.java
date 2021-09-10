package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzclt implements Runnable {
    private final Object zzdlk;
    private final String zzgkt;
    private final zzclq zzgmp;
    private final zzbaa zzgnb;
    private final long zzgnc;

    zzclt(zzclq zzclq, Object obj, zzbaa zzbaa, String str, long j) {
        this.zzgmp = zzclq;
        this.zzdlk = obj;
        this.zzgnb = zzbaa;
        this.zzgkt = str;
        this.zzgnc = j;
    }

    public final void run() {
        this.zzgmp.zza(this.zzdlk, this.zzgnb, this.zzgkt, this.zzgnc);
    }
}
