package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcep implements Callable {
    private final zzdzw zzfwq;
    private final zzdzw zzfym;
    private final zzcen zzgho;
    private final zzdzw zzghp;
    private final zzdzw zzghq;
    private final zzdzw zzghr;
    private final JSONObject zzghs;
    private final zzdzw zzght;
    private final zzdzw zzghu;
    private final zzdzw zzghv;

    zzcep(zzcen zzcen, zzdzw zzdzw, zzdzw zzdzw2, zzdzw zzdzw3, zzdzw zzdzw4, zzdzw zzdzw5, JSONObject jSONObject, zzdzw zzdzw6, zzdzw zzdzw7, zzdzw zzdzw8) {
        this.zzgho = zzcen;
        this.zzfym = zzdzw;
        this.zzfwq = zzdzw2;
        this.zzghp = zzdzw3;
        this.zzghq = zzdzw4;
        this.zzghr = zzdzw5;
        this.zzghs = jSONObject;
        this.zzght = zzdzw6;
        this.zzghu = zzdzw7;
        this.zzghv = zzdzw8;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzdzw zzdzw = this.zzfym;
        zzdzw zzdzw2 = this.zzfwq;
        zzdzw zzdzw3 = this.zzghp;
        zzdzw zzdzw4 = this.zzghq;
        zzdzw zzdzw5 = this.zzghr;
        JSONObject jSONObject = this.zzghs;
        zzdzw zzdzw6 = this.zzght;
        zzdzw zzdzw7 = this.zzghu;
        zzdzw zzdzw8 = this.zzghv;
        zzccd zzccd = (zzccd) zzdzw.get();
        zzccd.setImages((List) zzdzw2.get());
        zzccd.zza((zzaer) zzdzw3.get());
        zzccd.zzb((zzaer) zzdzw4.get());
        zzccd.zza((zzaej) zzdzw5.get());
        zzccd.zzh(zzcer.zzj(jSONObject));
        zzccd.zza(zzcer.zzk(jSONObject));
        zzbeb zzbeb = (zzbeb) zzdzw6.get();
        if (zzbeb != null) {
            zzccd.zzf(zzbeb);
            zzccd.zzac(zzbeb.getView());
            zzccd.zzb(zzbeb.zzabc());
        }
        zzbeb zzbeb2 = (zzbeb) zzdzw7.get();
        if (zzbeb2 != null) {
            zzccd.zzg(zzbeb2);
        }
        for (zzcfg zzcfg : (List) zzdzw8.get()) {
            int i = zzcfg.type;
            if (i == 1) {
                zzccd.zzn(zzcfg.zzcm, zzcfg.zzdre);
            } else if (i == 2) {
                zzccd.zza(zzcfg.zzcm, zzcfg.zzgij);
            }
        }
        return zzccd;
    }
}
