package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.os.Looper;
import com.google.android.gms.internal.ads.zzjw;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
public interface zzjt<T extends zzjw> {
    zzjr<T> zza(Looper looper, zzjo zzjo);

    void zza(zzjr<T> zzjr);
}
