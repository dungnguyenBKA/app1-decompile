package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.common.annotation.KeepName;
import java.util.HashSet;

public final class ImageManager {
    private static final Object a = new Object();
    private static HashSet<Uri> b = new HashSet<>();
    public static final /* synthetic */ int c = 0;

    @KeepName
    private final class ImageReceiver extends ResultReceiver {
        public final void onReceiveResult(int i, Bundle bundle) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
            int i2 = ImageManager.c;
            throw null;
        }
    }
}
