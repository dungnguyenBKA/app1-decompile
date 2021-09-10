package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;

final class zzee implements Runnable {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ Context zzxl;
    private final /* synthetic */ View zzxm;
    private final /* synthetic */ String zzxp;

    zzee(zzea zzea, Context context, String str, View view, Activity activity) {
        this.zzxl = context;
        this.zzxp = str;
        this.zzxm = view;
        this.val$activity = activity;
    }

    public final void run() {
        try {
            zzea.zzxa.zza(this.zzxl, this.zzxp, this.zzxm, this.val$activity);
        } catch (Exception e) {
            zzea.zzxc.zza(2021, -1, e);
        }
    }
}
