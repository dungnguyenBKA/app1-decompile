package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import com.google.android.gms.ads.AdRequest;
import java.util.Set;

public final class zzddc implements zzdfi<zzddd> {
    private final Context context;
    private final zzdzv zzhah;
    private final Set<String> zzhav;
    private final ViewGroup zzhcb;

    public zzddc(zzdzv zzdzv, ViewGroup viewGroup, Context context2, Set<String> set) {
        this.zzhah = zzdzv;
        this.zzhav = set;
        this.zzhcb = viewGroup;
        this.context = context2;
    }

    private static Boolean zzl(Activity activity) {
        Window window = activity.getWindow();
        if (window != null && (window.getAttributes().flags & 16777216) != 0) {
            return Boolean.TRUE;
        }
        try {
            boolean z = false;
            if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & AdRequest.MAX_CONTENT_URL_LENGTH) != 0) {
                z = true;
            }
            return Boolean.valueOf(z);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzddd> zzasy() {
        return this.zzhah.zze(new zzddf(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzddd zzatg() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxi)).booleanValue() && this.zzhcb != null && this.zzhav.contains("banner")) {
            return new zzddd(Boolean.valueOf(this.zzhcb.isHardwareAccelerated()));
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxj)).booleanValue() && this.zzhav.contains("native")) {
            Context context2 = this.context;
            if (context2 instanceof Activity) {
                return new zzddd(zzl((Activity) context2));
            }
        }
        return new zzddd(null);
    }
}
