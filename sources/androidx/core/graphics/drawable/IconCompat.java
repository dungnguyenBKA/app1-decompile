package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.InvocationTargetException;

public class IconCompat extends CustomVersionedParcelable {
    static final PorterDuff.Mode j = PorterDuff.Mode.SRC_IN;
    public int a = -1;
    Object b;
    public byte[] c = null;
    public Parcelable d = null;
    public int e = 0;
    public int f = 0;
    public ColorStateList g = null;
    PorterDuff.Mode h = j;
    public String i = null;

    public IconCompat() {
    }

    public static IconCompat a(Resources resources, String str, int i2) {
        if (i2 != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.e = i2;
            iconCompat.b = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Drawable resource ID must not be 0");
    }

    public int b() {
        int i2;
        int i3 = this.a;
        if (i3 == -1 && (i2 = Build.VERSION.SDK_INT) >= 23) {
            Icon icon = (Icon) this.b;
            if (i2 >= 28) {
                return icon.getResId();
            }
            try {
                return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
            } catch (IllegalAccessException e2) {
                Log.e("IconCompat", "Unable to get icon resource", e2);
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon resource", e3);
            } catch (NoSuchMethodException e4) {
                Log.e("IconCompat", "Unable to get icon resource", e4);
            }
        } else if (i3 == 2) {
            return this.e;
        } else {
            throw new IllegalStateException("called getResId() on " + this);
        }
        return 0;
    }

    public String c() {
        int i2;
        int i3 = this.a;
        if (i3 == -1 && (i2 = Build.VERSION.SDK_INT) >= 23) {
            Icon icon = (Icon) this.b;
            if (i2 >= 28) {
                return icon.getResPackage();
            }
            try {
                return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
            } catch (IllegalAccessException e2) {
                Log.e("IconCompat", "Unable to get icon package", e2);
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon package", e3);
            } catch (NoSuchMethodException e4) {
                Log.e("IconCompat", "Unable to get icon package", e4);
            }
        } else if (i3 == 2) {
            return ((String) this.b).split(":", -1)[0];
        } else {
            throw new IllegalStateException("called getResPackage() on " + this);
        }
        return null;
    }

    public int d() {
        int i2;
        int i3 = this.a;
        if (i3 != -1 || (i2 = Build.VERSION.SDK_INT) < 23) {
            return i3;
        }
        Icon icon = (Icon) this.b;
        if (i2 >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e2);
            return -1;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e3);
            return -1;
        } catch (NoSuchMethodException e4) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e4);
            return -1;
        }
    }

    public Icon e() {
        Icon icon;
        int i2 = this.a;
        if (i2 == -1) {
            return (Icon) this.b;
        }
        if (i2 == 1) {
            icon = Icon.createWithBitmap((Bitmap) this.b);
        } else if (i2 == 2) {
            icon = Icon.createWithResource(c(), this.e);
        } else if (i2 == 3) {
            icon = Icon.createWithData((byte[]) this.b, this.e, this.f);
        } else if (i2 == 4) {
            icon = Icon.createWithContentUri((String) this.b);
        } else if (i2 != 5) {
            throw new IllegalArgumentException("Unknown type");
        } else if (Build.VERSION.SDK_INT >= 26) {
            icon = Icon.createWithAdaptiveBitmap((Bitmap) this.b);
        } else {
            Bitmap bitmap = (Bitmap) this.b;
            int min = (int) (((float) Math.min(bitmap.getWidth(), bitmap.getHeight())) * 0.6666667f);
            Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint(3);
            float f2 = ((float) min) * 0.5f;
            paint.setColor(-16777216);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            Matrix matrix = new Matrix();
            matrix.setTranslate((float) ((-(bitmap.getWidth() - min)) / 2), (float) ((-(bitmap.getHeight() - min)) / 2));
            bitmapShader.setLocalMatrix(matrix);
            paint.setShader(bitmapShader);
            canvas.drawCircle(f2, f2, 0.9166667f * f2, paint);
            canvas.setBitmap(null);
            icon = Icon.createWithBitmap(createBitmap);
        }
        ColorStateList colorStateList = this.g;
        if (colorStateList != null) {
            icon.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.h;
        if (mode != j) {
            icon.setTintMode(mode);
        }
        return icon;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0042, code lost:
        if (r1 != 5) goto L_0x00b1;
     */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00c5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String toString() {
        /*
        // Method dump skipped, instructions count: 217
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.toString():java.lang.String");
    }

    private IconCompat(int i2) {
        this.a = i2;
    }
}
