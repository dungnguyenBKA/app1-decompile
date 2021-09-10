package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;

final /* synthetic */ class zzdcx implements Callable {
    private final zzdcu zzhbz;

    zzdcx(zzdcu zzdcu) {
        this.zzhbz = zzdcu;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        String str2;
        String str3;
        zzr.zzkr();
        zzrp zzyh = zzr.zzkv().zzxs().zzyh();
        Bundle bundle = null;
        if (zzyh != null && (!zzr.zzkv().zzxs().zzyi() || !zzr.zzkv().zzxs().zzyk())) {
            if (zzyh.zzmm()) {
                zzyh.wakeup();
            }
            zzrj zzmk = zzyh.zzmk();
            if (zzmk != null) {
                str2 = zzmk.zzlz();
                str = zzmk.zzma();
                str3 = zzmk.zzmb();
                if (str2 != null) {
                    zzr.zzkv().zzxs().zzec(str2);
                }
                if (str3 != null) {
                    zzr.zzkv().zzxs().zzed(str3);
                }
            } else {
                str2 = zzr.zzkv().zzxs().zzyj();
                str3 = zzr.zzkv().zzxs().zzyl();
                str = null;
            }
            Bundle bundle2 = new Bundle(1);
            if (!zzr.zzkv().zzxs().zzyk()) {
                if (str3 == null || TextUtils.isEmpty(str3)) {
                    bundle2.putString("v_fp_vertical", "no_hash");
                } else {
                    bundle2.putString("v_fp_vertical", str3);
                }
            }
            if (str2 != null && !zzr.zzkv().zzxs().zzyi()) {
                bundle2.putString("fingerprint", str2);
                if (!str2.equals(str)) {
                    bundle2.putString("v_fp", str);
                }
            }
            if (!bundle2.isEmpty()) {
                bundle = bundle2;
            }
        }
        return new zzdcv(bundle);
    }
}
