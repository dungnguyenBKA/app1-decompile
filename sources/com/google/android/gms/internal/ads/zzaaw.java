package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.internal.n;
import com.vungle.warren.error.VungleException;

public final class zzaaw {
    private final Context context;

    public zzaaw(Context context2) {
        n.i(context2, "Context can not be null");
        this.context = context2;
    }

    private final boolean zza(Intent intent) {
        n.i(intent, "Intent can not be null");
        if (!this.context.getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
            return true;
        }
        return false;
    }

    public final boolean zzrx() {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return zza(intent);
    }

    public final boolean zzry() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return zza(intent);
    }

    public final boolean zzrz() {
        return ((Boolean) zzbr.zza(this.context, new zzaaz())).booleanValue() && yv.a(this.context).a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    @TargetApi(VungleException.SERVER_RETRY_ERROR)
    public final boolean zzsa() {
        return zza(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }
}
