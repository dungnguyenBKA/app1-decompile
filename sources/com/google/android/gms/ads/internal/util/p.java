package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;

final class p implements Callable<String> {
    private final /* synthetic */ Context b;
    private final /* synthetic */ Context c;

    p(Context context, Context context2) {
        this.b = context;
        this.c = context2;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.b != null) {
            zzd.zzeb("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.b.getSharedPreferences("admob_user_agent", 0);
        } else {
            zzd.zzeb("Attempting to read user agent from local cache.");
            sharedPreferences = this.c.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            zzd.zzeb("Reading user agent from WebSettings");
            string = WebSettings.getDefaultUserAgent(this.c);
            if (z) {
                sharedPreferences.edit().putString("user_agent", string).apply();
                zzd.zzeb("Persisting user agent.");
            }
        }
        return string;
    }
}
