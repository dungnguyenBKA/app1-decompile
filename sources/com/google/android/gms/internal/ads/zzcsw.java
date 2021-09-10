package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.c;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzd;
import java.util.concurrent.Executor;

public final class zzcsw implements zzcrj<zzbyy> {
    private final Context context;
    private final zzdmu zzfrb;
    private final Executor zzfsj;
    private final zzbzy zzgtz;

    public zzcsw(Context context2, Executor executor, zzbzy zzbzy, zzdmu zzdmu) {
        this.context = context2;
        this.zzgtz = zzbzy;
        this.zzfsj = executor;
        this.zzfrb = zzdmu;
    }

    private static String zze(zzdmw zzdmw) {
        try {
            return zzdmw.zzhjj.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        Context context2 = this.context;
        return (context2 instanceof Activity) && zzacp.zzj(context2) && !TextUtils.isEmpty(zze(zzdmw));
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzbyy> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        String zze = zze(zzdmw);
        return zzdzk.zzb(zzdzk.zzag(null), new zzcsv(this, zze != null ? Uri.parse(zze) : null, zzdnl, zzdmw), this.zzfsj);
    }

    /* access modifiers changed from: package-private */
    public final zzdzw zza(Uri uri, zzdnl zzdnl, zzdmw zzdmw, Object obj) {
        try {
            c a = new c.a(null).a();
            a.a.setData(uri);
            zzd zzd = new zzd(a.a, null);
            zzbaa zzbaa = new zzbaa();
            zzbza zza = this.zzgtz.zza(new zzboj(zzdnl, zzdmw, null), new zzbyz(new zzcsy(zzbaa)));
            zzbaa.set(new AdOverlayInfoParcel(zzd, null, zza.zzaia(), null, new zzazn(0, 0, false), null));
            this.zzfrb.zzxo();
            return zzdzk.zzag(zza.zzahz());
        } catch (Throwable th) {
            zzazk.zzc("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }
}
