package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;

public final class zzdoi {
    public static ParcelFileDescriptor zze(InputStream inputStream) {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        zzazp.zzeic.execute(new zzdoh(inputStream, createPipe[1]));
        return parcelFileDescriptor;
    }
}
