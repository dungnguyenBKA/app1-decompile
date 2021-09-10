package com.google.android.gms.internal.ads;

final /* synthetic */ class zzalu implements Runnable {
    private final zzalv zzdkj;
    private final zzakm zzdkk;

    zzalu(zzalv zzalv, zzakm zzakm) {
        this.zzdkj = zzalv;
        this.zzdkk = zzakm;
    }

    public final void run() {
        zzalv zzalv = this.zzdkj;
        zzakm zzakm = this.zzdkk;
        zzalv.zzdkl.zzdjp.zzg(zzakm);
        zzakm.destroy();
    }
}
