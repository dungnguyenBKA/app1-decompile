package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.zzatf;
import com.google.android.gms.internal.ads.zzawz;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zza {
    private final Context a;
    private boolean b;
    private zzawz c;
    private zzatf d = null;

    public zza(Context context, zzawz zzawz, zzatf zzatf) {
        this.a = context;
        this.c = zzawz;
        if (0 == 0) {
            this.d = new zzatf();
        }
    }

    private final boolean a() {
        zzawz zzawz = this.c;
        return (zzawz != null && zzawz.zzwv().zzear) || this.d.zzdxb;
    }

    public final void recordClick() {
        this.b = true;
    }

    public final void zzbk(String str) {
        List<String> list;
        if (a()) {
            if (str == null) {
                str = "";
            }
            zzawz zzawz = this.c;
            if (zzawz != null) {
                zzawz.zza(str, null, 3);
                return;
            }
            zzatf zzatf = this.d;
            if (zzatf.zzdxb && (list = zzatf.zzdxc) != null) {
                for (String str2 : list) {
                    if (!TextUtils.isEmpty(str2)) {
                        String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                        zzr.zzkr();
                        zzj.zzb(this.a, "", replace);
                    }
                }
            }
        }
    }

    public final boolean zzjy() {
        return !a() || this.b;
    }
}
