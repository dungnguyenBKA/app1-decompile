package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.WindowInsets;

final /* synthetic */ class a implements View.OnApplyWindowInsetsListener {
    private final Activity a;

    a(zzac zzac, Activity activity) {
        this.a = activity;
    }

    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return zzac.a(this.a, view, windowInsets);
    }
}
