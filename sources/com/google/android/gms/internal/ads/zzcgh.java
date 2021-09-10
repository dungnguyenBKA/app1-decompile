package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;

public final class zzcgh implements zzaif<Object> {
    private final zzepv<zzcge> zzgdo;
    private final zzcgk zzgge;
    private final zzafx zzgiu;

    public zzcgh(zzcco zzcco, zzccd zzccd, zzcgk zzcgk, zzepv<zzcge> zzepv) {
        this.zzgiu = zzcco.zzgb(zzccd.getCustomTemplateId());
        this.zzgge = zzcgk;
        this.zzgdo = zzepv;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.zzgiu.zza(this.zzgdo.get(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzazk.zzd(sb.toString(), e);
        }
    }

    public final void zzapn() {
        if (this.zzgiu != null) {
            this.zzgge.zza("/nativeAdCustomClick", this);
        }
    }
}
