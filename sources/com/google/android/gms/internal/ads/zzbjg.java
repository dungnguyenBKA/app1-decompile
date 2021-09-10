package com.google.android.gms.internal.ads;

import java.util.Map;

public final class zzbjg implements zzdyu<zzdnl, zzdnl> {
    private Map<String, zzbjf> zzfqz;

    public zzbjg(Map<String, zzbjf> map) {
        this.zzfqz = map;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzdzw' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdyu
    public final /* synthetic */ zzdzw<zzdnl> zzf(zzdnl zzdnl) {
        zzdnl zzdnl2 = zzdnl;
        for (zzdni zzdni : zzdnl2.zzhks.zzhkq) {
            if (this.zzfqz.containsKey(zzdni.name)) {
                this.zzfqz.get(zzdni.name).zzm(zzdni.zzhko);
            }
        }
        return zzdzk.zzag(zzdnl2);
    }
}
