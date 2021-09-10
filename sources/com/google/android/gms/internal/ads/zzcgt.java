package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class zzcgt implements Callable<zzcgk> {
    private final Context context;
    private final zzbej zzbqa;
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzcqr zzdie;
    private final zzazn zzdtx;
    private final zzei zzesm;
    private final zzdss zzfrf;
    private final Executor zzfsj;
    private final zzb zzghz;

    public zzcgt(Context context2, Executor executor, zzei zzei, zzazn zzazn, zzb zzb, zzbej zzbej, zzcqr zzcqr, zzdss zzdss, zzckn zzckn, zzdrz zzdrz) {
        this.context = context2;
        this.zzfsj = executor;
        this.zzesm = zzei;
        this.zzdtx = zzazn;
        this.zzghz = zzb;
        this.zzbqa = zzbej;
        this.zzdie = zzcqr;
        this.zzfrf = zzdss;
        this.zzdib = zzckn;
        this.zzdic = zzdrz;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzcgk call() {
        zzcgk zzcgk = new zzcgk(this);
        zzcgk.zzapo();
        return zzcgk;
    }
}
