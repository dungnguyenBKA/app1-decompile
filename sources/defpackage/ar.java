package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.provider.MediaStore;

/* renamed from: ar  reason: default package */
public class ar {
    public static final int[] a = {4096, 3840, 3112, 2664, 2160, 1920, 1660, 1024, 960, 720, 640, 480, 320};

    public static Uri a(Context context) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", bm.b("IMG_", ".jpg"));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("relative_path", "DCIM/Camera");
        return context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
    }
}
