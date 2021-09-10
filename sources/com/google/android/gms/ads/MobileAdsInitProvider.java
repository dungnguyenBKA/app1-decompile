package com.google.android.gms.ads;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import com.google.android.gms.internal.ads.zzzt;

public class MobileAdsInitProvider extends ContentProvider {
    private final zzzt b = new zzzt();

    public void attachInfo(Context context, ProviderInfo providerInfo) {
        this.b.attachInfo(context, providerInfo);
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return this.b.delete(uri, str, strArr);
    }

    public String getType(Uri uri) {
        return this.b.getType(uri);
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return this.b.insert(uri, contentValues);
    }

    public boolean onCreate() {
        return this.b.onCreate();
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return this.b.query(uri, strArr, str, strArr2, str2);
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return this.b.update(uri, contentValues, str, strArr);
    }
}
