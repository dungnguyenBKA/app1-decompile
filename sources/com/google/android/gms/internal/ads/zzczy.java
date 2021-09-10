package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzczy implements Runnable {
    private final zzczo zzgzl;
    private final zzcgk[] zzgzu;

    zzczy(zzczo zzczo, zzcgk[] zzcgkArr) {
        this.zzgzl = zzczo;
        this.zzgzu = zzcgkArr;
    }

    public final void run() {
        this.zzgzl.zza(this.zzgzu);
    }
}
