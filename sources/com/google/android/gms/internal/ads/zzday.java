package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public final class zzday implements zzdfi<zzdaz> {
    private final Context context;
    private final zzayo zzbqd;
    private final zzdnp zzfwy;
    private final zzdfi<zzdfp> zzhao;

    public zzday(zzdch<zzdfp> zzdch, zzdnp zzdnp, Context context2, zzayo zzayo) {
        this.zzhao = zzdch;
        this.zzfwy = zzdnp;
        this.context = context2;
        this.zzbqd = zzayo;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdaz zza(zzdfp zzdfp) {
        boolean z;
        String str;
        int i;
        int i2;
        float f;
        String str2;
        int i3;
        DisplayMetrics displayMetrics;
        zzvs zzvs = this.zzfwy.zzbpo;
        zzvs[] zzvsArr = zzvs.zzcih;
        if (zzvsArr != null) {
            str = null;
            boolean z2 = false;
            boolean z3 = false;
            z = false;
            for (zzvs zzvs2 : zzvsArr) {
                boolean z4 = zzvs2.zzcii;
                if (!z4 && !z2) {
                    str = zzvs2.zzacy;
                    z2 = true;
                }
                if (z4 && !z3) {
                    z3 = true;
                    z = true;
                }
                if (z2 && z3) {
                    break;
                }
            }
        } else {
            str = zzvs.zzacy;
            z = zzvs.zzcii;
        }
        Resources resources = this.context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            str2 = null;
            f = 0.0f;
            i2 = 0;
            i = 0;
        } else {
            float f2 = displayMetrics.density;
            int i4 = displayMetrics.widthPixels;
            i = displayMetrics.heightPixels;
            str2 = this.zzbqd.zzxs().zzyt();
            i2 = i4;
            f = f2;
        }
        StringBuilder sb = new StringBuilder();
        zzvs[] zzvsArr2 = zzvs.zzcih;
        if (zzvsArr2 != null) {
            boolean z5 = false;
            for (zzvs zzvs3 : zzvsArr2) {
                if (zzvs3.zzcii) {
                    z5 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    int i5 = zzvs3.width;
                    if (i5 == -1 && f != 0.0f) {
                        i5 = (int) (((float) zzvs3.widthPixels) / f);
                    }
                    sb.append(i5);
                    sb.append("x");
                    int i6 = zzvs3.height;
                    if (i6 == -2) {
                        if (f != 0.0f) {
                            i6 = (int) (((float) zzvs3.heightPixels) / f);
                        }
                    }
                    sb.append(i6);
                }
            }
            if (z5) {
                if (sb.length() != 0) {
                    i3 = 0;
                    sb.insert(0, "|");
                } else {
                    i3 = 0;
                }
                sb.insert(i3, "320x50");
            }
        }
        return new zzdaz(zzvs, str, z, sb.toString(), f, i2, i, str2, this.zzfwy.zzhar);
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdaz> zzasy() {
        return zzdzk.zzb(this.zzhao.zzasy(), new zzdbb(this), zzazp.zzeih);
    }
}
