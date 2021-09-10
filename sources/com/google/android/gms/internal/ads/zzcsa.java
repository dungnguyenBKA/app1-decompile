package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final class zzcsa implements zzcag {
    private final zzazn zzboz;
    private final zzdnp zzfwy;
    private final zzdmw zzgeu;
    private final zzdzw<zzbli> zzgtj;
    private final zzbeb zzgtk;

    zzcsa(zzazn zzazn, zzdzw<zzbli> zzdzw, zzdmw zzdmw, zzbeb zzbeb, zzdnp zzdnp) {
        this.zzboz = zzazn;
        this.zzgtj = zzdzw;
        this.zzgeu = zzdmw;
        this.zzgtk = zzbeb;
        this.zzfwy = zzdnp;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) {
        int i;
        this.zzgtk.zzay(true);
        zzk zzk = new zzk(true, true, false, 0.0f, -1, z, this.zzgeu.zzftq, false);
        zzr.zzkq();
        zzbzw zzahf = ((zzbli) zzdzk.zzb(this.zzgtj)).zzahf();
        zzbeb zzbeb = this.zzgtk;
        int i2 = this.zzgeu.zzhjp;
        if (i2 == -1) {
            zzvx zzvx = this.zzfwy.zzhla;
            if (zzvx != null) {
                int i3 = zzvx.orientation;
                if (i3 == 1) {
                    i = 7;
                } else if (i3 == 2) {
                    i = 6;
                }
                zzazn zzazn = this.zzboz;
                zzdmw zzdmw = this.zzgeu;
                String str = zzdmw.zzdwd;
                zzdnd zzdnd = zzdmw.zzhjg;
                zzm.zza(context, new AdOverlayInfoParcel((zzvc) null, zzahf, (zzv) null, zzbeb, i, zzazn, str, zzk, zzdnd.zzdsw, zzdnd.zzdsy), true);
            }
            zzazk.zzdy("Error setting app open orientation; no targeting orientation available.");
            i2 = this.zzgeu.zzhjp;
        }
        i = i2;
        zzazn zzazn2 = this.zzboz;
        zzdmw zzdmw2 = this.zzgeu;
        String str2 = zzdmw2.zzdwd;
        zzdnd zzdnd2 = zzdmw2.zzhjg;
        zzm.zza(context, new AdOverlayInfoParcel((zzvc) null, zzahf, (zzv) null, zzbeb, i, zzazn2, str2, zzk, zzdnd2.zzdsw, zzdnd2.zzdsy), true);
    }
}
