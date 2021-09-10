package com.camerasideas.collagemaker.appdata;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Build;
import java.io.File;

public class FileProvider extends androidx.core.content.FileProvider {
    public static Uri b(Context context, String str, File file) {
        if (Build.VERSION.SDK_INT >= 24) {
            return androidx.core.content.FileProvider.b(context, str, file);
        }
        return Uri.fromFile(file);
    }

    @Override // androidx.core.content.FileProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        if (Build.VERSION.SDK_INT >= 24) {
            super.attachInfo(context, providerInfo);
        }
    }
}
