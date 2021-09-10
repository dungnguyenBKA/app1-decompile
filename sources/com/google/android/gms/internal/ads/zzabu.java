package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
public final class zzabu {
    public static void zza(zzabs zzabs, zzabt zzabt) {
        if (zzabt.getContext() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else if (!TextUtils.isEmpty(zzabt.zzlw())) {
            zzabs.zza(zzabt.getContext(), zzabt.zzlw(), zzabt.zzsj(), zzabt.zzsk());
        } else {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
