package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

public final class zzbfr extends MutableContextWrapper {
    private Context zzaad;
    private Activity zzehf;
    private Context zzeun;

    public zzbfr(Context context) {
        super(context);
        setBaseContext(context);
    }

    @Override // android.content.Context, android.content.ContextWrapper
    public final Object getSystemService(String str) {
        return this.zzeun.getSystemService(str);
    }

    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.zzaad = applicationContext;
        this.zzehf = context instanceof Activity ? (Activity) context : null;
        this.zzeun = context;
        super.setBaseContext(applicationContext);
    }

    public final void startActivity(Intent intent) {
        Activity activity = this.zzehf;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.zzaad.startActivity(intent);
    }

    public final Activity zzabe() {
        return this.zzehf;
    }

    public final Context zzacs() {
        return this.zzeun;
    }
}
