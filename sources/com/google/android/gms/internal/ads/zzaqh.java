package com.google.android.gms.internal.ads;

import android.content.DialogInterface;

/* access modifiers changed from: package-private */
public final class zzaqh implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzaqf zzdpc;

    zzaqh(zzaqf zzaqf) {
        this.zzdpc = zzaqf;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzdpc.zzds("Operation denied by user.");
    }
}
