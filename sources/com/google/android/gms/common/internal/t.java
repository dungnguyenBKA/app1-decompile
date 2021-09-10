package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;

/* access modifiers changed from: package-private */
public final class t extends e {
    private final /* synthetic */ Intent b;
    private final /* synthetic */ Fragment c;
    private final /* synthetic */ int d;

    t(Intent intent, Fragment fragment, int i) {
        this.b = intent;
        this.c = fragment;
        this.d = i;
    }

    @Override // com.google.android.gms.common.internal.e
    public final void c() {
        Intent intent = this.b;
        if (intent != null) {
            this.c.k1(intent, this.d);
        }
    }
}
