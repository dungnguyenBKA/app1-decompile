package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.zzr;
import java.util.Arrays;
import java.util.List;

public final class zzcge extends zzafm {
    private final Context zzaad;
    private final zzccd zzgch;
    private zzcbu zzgfm;
    private zzccz zzgit;

    public zzcge(Context context, zzccd zzccd, zzccz zzccz, zzcbu zzcbu) {
        this.zzaad = context;
        this.zzgch = zzccd;
        this.zzgit = zzccz;
        this.zzgfm = zzcbu;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void destroy() {
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null) {
            zzcbu.destroy();
        }
        this.zzgfm = null;
        this.zzgit = null;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final List<String> getAvailableAssetNames() {
        e0<String, zzaed> zzaoc = this.zzgch.zzaoc();
        e0<String, String> zzaoe = this.zzgch.zzaoe();
        String[] strArr = new String[(zzaoe.size() + zzaoc.size())];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < zzaoc.size()) {
            strArr[i3] = zzaoc.h(i2);
            i2++;
            i3++;
        }
        while (i < zzaoe.size()) {
            strArr[i3] = zzaoe.h(i);
            i++;
            i3++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final String getCustomTemplateId() {
        return this.zzgch.getCustomTemplateId();
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zzzc getVideoController() {
        return this.zzgch.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void performClick(String str) {
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null) {
            zzcbu.zzfw(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void recordImpression() {
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null) {
            zzcbu.zzanj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final String zzct(String str) {
        return this.zzgch.zzaoe().getOrDefault(str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zzaer zzcu(String str) {
        return this.zzgch.zzaoc().getOrDefault(str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final boolean zzp(zv zvVar) {
        Object P = aw.P(zvVar);
        if (!(P instanceof ViewGroup)) {
            return false;
        }
        zzccz zzccz = this.zzgit;
        if (!(zzccz != null && zzccz.zza((ViewGroup) P))) {
            return false;
        }
        this.zzgch.zzanz().zza(new zzcgd(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zzq(zv zvVar) {
        zzcbu zzcbu;
        Object P = aw.P(zvVar);
        if ((P instanceof View) && this.zzgch.zzaob() != null && (zzcbu = this.zzgfm) != null) {
            zzcbu.zzaa((View) P);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zv zztm() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final zv zztr() {
        return aw.Q(this.zzaad);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final boolean zzts() {
        zzcbu zzcbu = this.zzgfm;
        if ((zzcbu == null || zzcbu.zzanq()) && this.zzgch.zzaoa() != null && this.zzgch.zzanz() == null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final boolean zztt() {
        zv zzaob = this.zzgch.zzaob();
        if (zzaob != null) {
            zzr.zzlg().zzab(zzaob);
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvs)).booleanValue() || this.zzgch.zzaoa() == null) {
                return true;
            }
            this.zzgch.zzaoa().zza("onSdkLoaded", new x());
            return true;
        }
        zzazk.zzex("Trying to start OMID session before creation.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zztu() {
        String zzaod = this.zzgch.zzaod();
        if ("Google".equals(zzaod)) {
            zzazk.zzex("Illegal argument specified for omid partner name.");
            return;
        }
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null) {
            zzcbu.zzi(zzaod, false);
        }
    }
}
