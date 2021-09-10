package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;

final class zzeb implements Runnable {
    private final /* synthetic */ Context zzxl;
    private final /* synthetic */ View zzxm;
    private final /* synthetic */ Activity zzxn;

    zzeb(zzea zzea, Context context, View view, Activity activity) {
        this.zzxl = context;
        this.zzxm = view;
        this.zzxn = activity;
    }

    public final void run() {
        try {
            zzea.zzxa.zza(this.zzxl, this.zzxm, this.zzxn);
        } catch (Exception e) {
            zzea.zzxc.zza(2020, -1, e);
        }
    }
}
