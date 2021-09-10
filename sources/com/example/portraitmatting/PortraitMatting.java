package com.example.portraitmatting;

import android.content.Context;
import android.graphics.Bitmap;
import com.getkeepsafe.relinker.ReLinker;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

public class PortraitMatting {
    public static long a(Context context) {
        byte[] c = c(context, "seg.pen");
        byte[] c2 = c(context, "matting.pen");
        try {
            return initialize(context, c, c2);
        } catch (Exception unused) {
            ReLinker.loadLibrary(context, "portraitmatting");
            return initialize(context, c, c2);
        }
    }

    public static void b(Context context) {
        try {
            System.loadLibrary("portraitmatting");
        } catch (Throwable unused) {
            ReLinker.loadLibrary(context, "portraitmatting");
        }
    }

    private static byte[] c(Context context, String str) {
        try {
            InputStream open = context.getAssets().open(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.close();
                    open.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void d(long j) {
        if (j != 0) {
            release(j);
        }
    }

    public static int e(long j, Bitmap bitmap, Bitmap bitmap2) {
        if (j == 0 || bitmap.isRecycled() || bitmap2 == null || bitmap2.isRecycled()) {
            return -1;
        }
        return run(j, bitmap, bitmap2);
    }

    private static native long initialize(Context context, byte[] bArr, byte[] bArr2);

    private static native void release(long j);

    private static native int run(long j, Bitmap bitmap, Bitmap bitmap2);
}
