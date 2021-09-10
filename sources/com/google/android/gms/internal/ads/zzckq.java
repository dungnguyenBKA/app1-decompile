package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class zzckq {
    private final Map<String, String> zzdbf = new ConcurrentHashMap();
    private final /* synthetic */ zzckn zzglu;

    zzckq(zzckn zzckn) {
        this.zzglu = zzckn;
    }

    /* access modifiers changed from: public */
    private final zzckq zzaqs() {
        this.zzdbf.putAll(this.zzglu.zzgls);
        return this;
    }

    public final zzckq zza(zzdnb zzdnb) {
        this.zzdbf.put("gqi", zzdnb.zzbvs);
        return this;
    }

    public final void zzaqt() {
        this.zzglu.executor.execute(new zzckp(this));
    }

    public final String zzaqu() {
        return this.zzglu.zzglo.zzp(this.zzdbf);
    }

    public final /* synthetic */ void zzaqv() {
        this.zzglu.zzglo.zzo(this.zzdbf);
    }

    public final zzckq zzc(zzdmw zzdmw) {
        this.zzdbf.put("aai", zzdmw.zzdlu);
        return this;
    }

    public final zzckq zzr(String str, String str2) {
        this.zzdbf.put(str, str2);
        return this;
    }
}
