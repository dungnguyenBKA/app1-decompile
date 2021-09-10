package com.caverock.androidsvg;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;

public class SVGImageView extends ImageView {
    private static Method b;

    public SVGImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        try {
            b = View.class.getMethod("setLayerType", Integer.TYPE, Paint.class);
        } catch (NoSuchMethodException unused) {
        }
        a(attributeSet, 0);
    }

    private void a(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R.styleable.SVGImageView, i, 0);
        try {
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            if (resourceId != -1) {
                setImageResource(resourceId);
                return;
            }
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                if (b(Uri.parse(string), false)) {
                    obtainStyledAttributes.recycle();
                    return;
                }
                c(string);
            }
            obtainStyledAttributes.recycle();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private boolean b(Uri uri, boolean z) {
        InputStream inputStream = null;
        try {
            inputStream = getContext().getContentResolver().openInputStream(uri);
            int i = c.d;
            c e = new f().e(inputStream);
            d();
            setImageDrawable(new PictureDrawable(e.i()));
            if (inputStream == null) {
                return true;
            }
            try {
                inputStream.close();
                return true;
            } catch (IOException unused) {
                return true;
            }
        } catch (FileNotFoundException unused2) {
            if (z) {
                Log.e("SVGImageView", "File not found: " + uri);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
            }
            return false;
        } catch (e e2) {
            Log.e("SVGImageView", "Error loading file " + uri + ": " + e2.getMessage());
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            return false;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused5) {
                }
            }
            throw th;
        }
    }

    private void d() {
        if (b != null) {
            try {
                int i = View.class.getField("LAYER_TYPE_SOFTWARE").getInt(new View(getContext()));
                b.invoke(this, Integer.valueOf(i), null);
            } catch (Exception e) {
                Log.w("SVGImageView", "Unexpected failure calling setLayerType", e);
            }
        }
    }

    public void c(String str) {
        try {
            c e = c.e(getContext().getAssets(), str);
            d();
            setImageDrawable(new PictureDrawable(e.i()));
        } catch (e e2) {
            Log.e("SVGImageView", "Error loading file " + str + ": " + e2.getMessage());
        } catch (FileNotFoundException unused) {
            Log.e("SVGImageView", "File not found: " + str);
        } catch (IOException e3) {
            Log.e("SVGImageView", "Unable to load asset file: " + str, e3);
        }
    }

    public void setImageResource(int i) {
        try {
            Context context = getContext();
            int i2 = c.d;
            c e = new f().e(context.getResources().openRawResource(i));
            d();
            setImageDrawable(new PictureDrawable(e.i()));
        } catch (e e2) {
            Log.e("SVGImageView", String.format("Error loading resource 0x%x: %s", Integer.valueOf(i), e2.getMessage()));
        }
    }

    public void setImageURI(Uri uri) {
        b(uri, true);
    }

    public SVGImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        try {
            b = View.class.getMethod("setLayerType", Integer.TYPE, Paint.class);
        } catch (NoSuchMethodException unused) {
        }
        a(attributeSet, i);
    }
}
