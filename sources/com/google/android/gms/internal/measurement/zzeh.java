package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

final class zzeh extends ContentObserver {
    zzeh(Handler handler) {
        super(null);
    }

    public final void onChange(boolean z) {
        zzei.zzk.set(true);
    }
}
