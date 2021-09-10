package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzc;
import java.util.Map;

final class zzahv implements zzaif<zzbeb> {
    zzahv() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbeb, Map map) {
        zzbeb zzbeb2 = zzbeb;
        if (zzbeb2.zzadl() != null) {
            zzbeb2.zzadl().zzmt();
        }
        zzc zzact = zzbeb2.zzact();
        if (zzact != null) {
            zzact.close();
            return;
        }
        zzc zzacu = zzbeb2.zzacu();
        if (zzacu != null) {
            zzacu.close();
        } else {
            zzazk.zzex("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
