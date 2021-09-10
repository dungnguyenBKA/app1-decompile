package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.g;

@TargetApi(17)
public class zzw extends zzr {
    public zzw() {
        super(null);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final String getDefaultUserAgent(Context context) {
        zzbu zzzr = zzbu.zzzr();
        if (TextUtils.isEmpty(zzzr.a)) {
            zzzr.a = (String) zzbr.zza(context, new p(g.getRemoteContext(context), context));
        }
        return zzzr.a;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final boolean zza(Context context, WebSettings webSettings) {
        super.zza(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zzb(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "airplane_mode_on", 0);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final void zzbe(Context context) {
        zzbu zzzr = zzbu.zzzr();
        zzd.zzeb("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(zzzr.a)) {
            Context remoteContext = g.getRemoteContext(context);
            if (remoteContext == null) {
                SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
                if (remoteContext == null) {
                    putString.apply();
                } else {
                    throw new IllegalStateException("world-readable shared preferences should only be used by apk");
                }
            }
            zzzr.a = defaultUserAgent;
        }
        zzd.zzeb("User agent is updated.");
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final Drawable zza(Context context, Bitmap bitmap, boolean z, float f) {
        if (!z || f <= 0.0f || f > 25.0f) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
        try {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
            Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
            RenderScript create = RenderScript.create(context);
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
            Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
            create2.setRadius(f);
            create2.setInput(createFromBitmap);
            create2.forEach(createFromBitmap2);
            createFromBitmap2.copyTo(createBitmap);
            return new BitmapDrawable(context.getResources(), createBitmap);
        } catch (RuntimeException unused) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zza(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "wifi_on", 0);
    }
}
