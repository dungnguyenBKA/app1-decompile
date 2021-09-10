package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class zzcuw {
    private final d zzbqg;
    private final zzcrq zzfxh;
    private final zzcuy zzgvg;
    private final List<String> zzgvh = Collections.synchronizedList(new ArrayList());
    private final boolean zzgvi;

    public zzcuw(d dVar, zzcuy zzcuy, zzcrq zzcrq) {
        this.zzbqg = dVar;
        this.zzgvg = zzcuy;
        this.zzgvi = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcza)).booleanValue();
        this.zzfxh = zzcrq;
    }

    /* access modifiers changed from: package-private */
    public final <T> zzdzw<T> zza(zzdnb zzdnb, zzdmw zzdmw, zzdzw<T> zzdzw) {
        long b = this.zzbqg.b();
        String str = zzdmw.zzdlu;
        if (str != null) {
            zzdzk.zza(zzdzw, new zzcuv(this, b, str, zzdmw, zzdnb), zzazp.zzeih);
        }
        return zzdzw;
    }

    public final String zzasc() {
        return TextUtils.join("_", this.zzgvh);
    }

    /* access modifiers changed from: private */
    public final void zza(String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(ic.m(str, 33));
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        if (!TextUtils.isEmpty(str2)) {
            sb2 = ic.e(ic.m(str2, ic.m(sb2, 1)), sb2, ".", str2);
        }
        this.zzgvh.add(sb2);
    }
}
