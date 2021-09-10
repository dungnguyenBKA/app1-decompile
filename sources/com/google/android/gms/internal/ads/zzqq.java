package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzqq implements Runnable {
    private final /* synthetic */ zzqj zzbna;
    private final /* synthetic */ int zzbne;
    private final /* synthetic */ int zzbnf;
    private final /* synthetic */ int zzbng;
    private final /* synthetic */ float zzbnh;

    zzqq(zzqj zzqj, int i, int i2, int i3, float f) {
        this.zzbna = zzqj;
        this.zzbne = i;
        this.zzbnf = i2;
        this.zzbng = i3;
        this.zzbnh = f;
    }

    public final void run() {
        this.zzbna.zzbmz.zzb(this.zzbne, this.zzbnf, this.zzbng, this.zzbnh);
    }
}
