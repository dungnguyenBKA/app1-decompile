package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final class zzctl implements zzcag {
    private final Context context;
    private final zzazn zzboz;
    private final zzdmw zzgeu;
    private final zzdzw<zzbza> zzgtj;
    private final zzbeb zzgtk;

    private zzctl(Context context2, zzazn zzazn, zzdzw<zzbza> zzdzw, zzdmw zzdmw, zzbeb zzbeb) {
        this.context = context2;
        this.zzboz = zzazn;
        this.zzgtj = zzdzw;
        this.zzgeu = zzdmw;
        this.zzgtk = zzbeb;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context2) {
        this.zzgtk.zzay(true);
        zzr.zzkr();
        zzk zzk = new zzk(false, zzj.zzax(this.context), false, 0.0f, -1, z, this.zzgeu.zzftq, false);
        zzr.zzkq();
        zzbzw zzahf = ((zzbza) zzdzk.zzb(this.zzgtj)).zzahf();
        zzbeb zzbeb = this.zzgtk;
        zzdmw zzdmw = this.zzgeu;
        int i = zzdmw.zzhjp;
        zzazn zzazn = this.zzboz;
        String str = zzdmw.zzdwd;
        zzdnd zzdnd = zzdmw.zzhjg;
        zzm.zza(context2, new AdOverlayInfoParcel((zzvc) null, zzahf, (zzv) null, zzbeb, i, zzazn, str, zzk, zzdnd.zzdsw, zzdnd.zzdsy), true);
    }
}
