package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;

public final class zzcob {
    private final zzdzv zzghl;
    private final zzepv<zzcol> zzgnt;
    private final zzcns zzgpg;

    public zzcob(zzdzv zzdzv, zzcns zzcns, zzepv<zzcol> zzepv) {
        this.zzghl = zzdzv;
        this.zzgpg = zzcns;
        this.zzgnt = zzepv;
    }

    private final <RetT> zzdzw<RetT> zza(zzatq zzatq, zzcom<InputStream> zzcom, zzcom<InputStream> zzcom2, zzdyu<InputStream, RetT> zzdyu) {
        zzdzw zzdzw;
        String str = zzatq.packageName;
        zzr.zzkr();
        if (zzj.zzek(str)) {
            zzdzw = zzdzk.immediateFailedFuture(new zzcoc(zzdom.INTERNAL_ERROR));
        } else {
            zzdzw = zzdzk.zzb(zzcom.zzq(zzatq), ExecutionException.class, zzcoe.zzboq, this.zzghl);
        }
        return zzdzf.zzg(zzdzw).zzb(zzdyu, this.zzghl).zza(zzcoc.class, new zzcod(this, zzcom2, zzatq, zzdyu), this.zzghl);
    }

    public final zzdzw<zzatq> zzl(zzatq zzatq) {
        zzcog zzcog = new zzcog(zzatq);
        zzcns zzcns = this.zzgpg;
        zzcns.getClass();
        return zza(zzatq, zzcof.zza(zzcns), new zzcoi(this), zzcog);
    }

    public final zzdzw<Void> zzm(zzatq zzatq) {
        if (zzfh.zzar(zzatq.zzdxl)) {
            return zzdzk.immediateFailedFuture(new zzcmb(zzdom.INVALID_REQUEST, "Pool key missing from removeUrl call."));
        }
        return zza(zzatq, new zzcok(this), new zzcoj(this), zzcoh.zzboq);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzn(zzatq zzatq) {
        return this.zzgnt.get().zzgj(zzatq.zzdxl);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzo(zzatq zzatq) {
        return this.zzgpg.zzgi(zzatq.zzdxl);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzp(zzatq zzatq) {
        return this.zzgnt.get().zzc(zzatq, Binder.getCallingUid());
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzcom zzcom, zzatq zzatq, zzdyu zzdyu, zzcoc zzcoc) {
        return zzdzk.zzb(zzcom.zzq(zzatq), zzdyu, this.zzghl);
    }
}
