package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* access modifiers changed from: package-private */
public final class s extends e {
    private final /* synthetic */ Intent b;
    private final /* synthetic */ Activity c;
    private final /* synthetic */ int d;

    s(Intent intent, Activity activity, int i) {
        this.b = intent;
        this.c = activity;
        this.d = i;
    }

    @Override // com.google.android.gms.common.internal.e
    public final void c() {
        Intent intent = this.b;
        if (intent != null) {
            this.c.startActivityForResult(intent, this.d);
        }
    }
}
