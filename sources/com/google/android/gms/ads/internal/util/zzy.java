package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
public class zzy extends zzv {
    @Override // com.google.android.gms.ads.internal.util.zzv, com.google.android.gms.ads.internal.util.zzr
    public final boolean isAttachedToWindow(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final ViewGroup.LayoutParams zzzd() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
