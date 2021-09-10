package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

public final class zzdex implements zzdfi<zzdeu> {
    private final Context context;
    private final zzazn zzbpn;
    private final zzdzv zzghl;

    public zzdex(zzdzv zzdzv, Context context2, zzazn zzazn) {
        this.zzghl = zzdzv;
        this.context = context2;
        this.zzbpn = zzazn;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdeu> zzasy() {
        return this.zzghl.zze(new zzdew(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdeu zzato() {
        boolean f = yv.a(this.context).f();
        zzr.zzkr();
        boolean zzau = zzj.zzau(this.context);
        String str = this.zzbpn.zzbrp;
        zzr.zzkt();
        boolean zzze = com.google.android.gms.ads.internal.util.zzr.zzze();
        zzr.zzkr();
        return new zzdeu(f, zzau, str, zzze, zzj.zzar(this.context), DynamiteModule.c(this.context, ModuleDescriptor.MODULE_ID), DynamiteModule.a(this.context, ModuleDescriptor.MODULE_ID));
    }
}
