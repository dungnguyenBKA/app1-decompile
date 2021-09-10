package com.google.android.gms.measurement.internal;

import android.content.Context;
import java.util.Objects;

public final class c9 {
    final Context a;

    public c9(Context context) {
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null reference");
        this.a = applicationContext;
    }
}
