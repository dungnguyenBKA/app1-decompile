package inshot.photoeditor.turbojpeg;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.ads.ADRequestList;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class TurboJpegEngine {
    private static boolean a(Bitmap bitmap, int i, Object obj, boolean z) {
        if (bitmap.getConfig() == Bitmap.Config.ARGB_8888) {
            return c(bitmap, i, obj, z);
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap).drawBitmap(bitmap, (Rect) null, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), (Paint) null);
        boolean c = c(createBitmap, i, obj, z);
        createBitmap.recycle();
        return c;
    }

    public static boolean b(Context context, Bitmap bitmap, String str, boolean z, boolean z2) {
        Log.e("TurboJpegEngine", "saveBitMapStart");
        boolean z3 = false;
        if (z) {
            if (z2) {
                return d(context, bitmap, Bitmap.CompressFormat.PNG, Uri.parse(str), 100);
            }
            Uri parse = Uri.parse(str);
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(parse, ADRequestList.ORDER_R);
            if (openFileDescriptor != null) {
                int detachFd = openFileDescriptor.detachFd();
                if (rd0.a()) {
                    z3 = a(bitmap, 100, Integer.valueOf(detachFd), true);
                }
                if (!z3) {
                    z3 = d(context, bitmap, Bitmap.CompressFormat.JPEG, parse, 100);
                }
                try {
                    openFileDescriptor.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } else if (z2) {
            return e(bitmap, Bitmap.CompressFormat.PNG, str, 100);
        } else {
            if (rd0.a()) {
                z3 = a(bitmap, 100, str, true);
            }
            if (!z3) {
                return e(bitmap, Bitmap.CompressFormat.JPEG, str, 100);
            }
        }
        return z3;
    }

    private static boolean c(Bitmap bitmap, int i, Object obj, boolean z) {
        if (obj instanceof String) {
            return compressBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), i, ((String) obj).getBytes(), z);
        }
        if (obj instanceof Integer) {
            return compressBitmap2(bitmap, bitmap.getWidth(), bitmap.getHeight(), i, ((Integer) obj).intValue(), z);
        }
        return false;
    }

    private static native boolean compressBitmap(Bitmap bitmap, int i, int i2, int i3, byte[] bArr, boolean z);

    private static native boolean compressBitmap2(Bitmap bitmap, int i, int i2, int i3, int i4, boolean z);

    public static boolean d(Context context, Bitmap bitmap, Bitmap.CompressFormat compressFormat, Uri uri, int i) {
        if (!(uri == null || bitmap == null)) {
            try {
                OutputStream openOutputStream = context.getContentResolver().openOutputStream(uri);
                boolean compress = bitmap.compress(compressFormat, i, openOutputStream);
                openOutputStream.close();
                if (!compress) {
                    return false;
                }
                return true;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean e(Bitmap bitmap, Bitmap.CompressFormat compressFormat, String str, int i) {
        if (!(str == null || bitmap == null)) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                Boolean valueOf = Boolean.valueOf(bitmap.compress(compressFormat, i, fileOutputStream));
                fileOutputStream.close();
                if (!valueOf.booleanValue()) {
                    return false;
                }
                return true;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
