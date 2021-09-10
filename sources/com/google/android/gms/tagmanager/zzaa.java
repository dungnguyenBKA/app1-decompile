package com.google.android.gms.tagmanager;

import android.util.Log;

/* access modifiers changed from: package-private */
public final class zzaa {
    private boolean zzg;

    public final synchronized void refresh() {
        if (this.zzg) {
            Log.e("GoogleTagManager", "Refreshing a released ContainerHolder.");
        } else {
            throw null;
        }
    }

    /* access modifiers changed from: package-private */
    public final String zzb() {
        if (this.zzg) {
            Log.e("GoogleTagManager", "setCtfeUrlPathAndQuery called on a released ContainerHolder.");
            return "";
        }
        throw null;
    }

    public final synchronized void zzd(String str) {
        if (!this.zzg) {
            throw null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void zze(String str) {
        if (this.zzg) {
            Log.e("GoogleTagManager", "setCtfeUrlPathAndQuery called on a released ContainerHolder.");
            return;
        }
        throw null;
    }
}
