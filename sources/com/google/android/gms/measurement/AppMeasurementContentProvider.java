package com.google.android.gms.measurement;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.measurement.internal.j4;
import java.util.Objects;

@Deprecated
public class AppMeasurementContentProvider extends ContentProvider {
    public void attachInfo(@RecentlyNonNull Context context, @RecentlyNonNull ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if ("com.google.android.gms.measurement.google_measurement_service".equals(providerInfo.authority)) {
            throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
        }
    }

    public int delete(@RecentlyNonNull Uri uri, @RecentlyNonNull String str, @RecentlyNonNull String[] strArr) {
        return 0;
    }

    @RecentlyNonNull
    public String getType(@RecentlyNonNull Uri uri) {
        return null;
    }

    @RecentlyNonNull
    public Uri insert(@RecentlyNonNull Uri uri, @RecentlyNonNull ContentValues contentValues) {
        return null;
    }

    public boolean onCreate() {
        Context context = getContext();
        Objects.requireNonNull(context, "null reference");
        j4.g(context, null, null);
        return false;
    }

    @RecentlyNonNull
    public Cursor query(@RecentlyNonNull Uri uri, @RecentlyNonNull String[] strArr, @RecentlyNonNull String str, @RecentlyNonNull String[] strArr2, @RecentlyNonNull String str2) {
        return null;
    }

    public int update(@RecentlyNonNull Uri uri, @RecentlyNonNull ContentValues contentValues, @RecentlyNonNull String str, @RecentlyNonNull String[] strArr) {
        return 0;
    }
}
