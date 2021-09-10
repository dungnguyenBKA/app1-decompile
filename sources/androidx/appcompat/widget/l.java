package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* access modifiers changed from: package-private */
public class l {
    private static final RectF k = new RectF();
    private static ConcurrentHashMap<String, Method> l = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, Field> m = new ConcurrentHashMap<>();
    private int a = 0;
    private boolean b = false;
    private float c = -1.0f;
    private float d = -1.0f;
    private float e = -1.0f;
    private int[] f = new int[0];
    private boolean g = false;
    private TextPaint h;
    private final TextView i;
    private final Context j;

    l(TextView textView) {
        this.i = textView;
        this.j = textView.getContext();
    }

    private int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr2[i3] = ((Integer) arrayList.get(i3)).intValue();
        }
        return iArr2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0117, code lost:
        if (r7.getLineEnd(r7.getLineCount() - 1) != r8.length()) goto L_0x0128;
     */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x012d  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0138  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int c(android.graphics.RectF r21) {
        /*
        // Method dump skipped, instructions count: 334
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.l.c(android.graphics.RectF):int");
    }

    private static Method i(String str) {
        try {
            Method method = l.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                l.put(str, method);
            }
            return method;
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e2);
            return null;
        }
    }

    private static <T> T j(Object obj, String str, T t) {
        try {
            return (T) i(str).invoke(obj, new Object[0]);
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e2);
            return t;
        }
    }

    private boolean q() {
        if (!s() || this.a != 1) {
            this.b = false;
        } else {
            if (!this.g || this.f.length == 0) {
                int floor = ((int) Math.floor((double) ((this.e - this.d) / this.c))) + 1;
                int[] iArr = new int[floor];
                for (int i2 = 0; i2 < floor; i2++) {
                    iArr[i2] = Math.round((((float) i2) * this.c) + this.d);
                }
                this.f = b(iArr);
            }
            this.b = true;
        }
        return this.b;
    }

    private boolean r() {
        int[] iArr = this.f;
        int length = iArr.length;
        boolean z = length > 0;
        this.g = z;
        if (z) {
            this.a = 1;
            this.d = (float) iArr[0];
            this.e = (float) iArr[length - 1];
            this.c = -1.0f;
        }
        return z;
    }

    private boolean s() {
        return !(this.i instanceof AppCompatEditText);
    }

    private void t(float f2, float f3, float f4) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        } else if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        } else if (f4 > 0.0f) {
            this.a = 1;
            this.d = f2;
            this.e = f3;
            this.c = f4;
            this.g = false;
        } else {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
    }

    /* access modifiers changed from: package-private */
    public void a() {
        boolean z;
        int i2;
        if (s() && this.a != 0) {
            if (this.b) {
                if (this.i.getMeasuredHeight() > 0 && this.i.getMeasuredWidth() > 0) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        z = this.i.isHorizontallyScrollable();
                    } else {
                        z = ((Boolean) j(this.i, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
                    }
                    if (z) {
                        i2 = 1048576;
                    } else {
                        i2 = (this.i.getMeasuredWidth() - this.i.getTotalPaddingLeft()) - this.i.getTotalPaddingRight();
                    }
                    int height = (this.i.getHeight() - this.i.getCompoundPaddingBottom()) - this.i.getCompoundPaddingTop();
                    if (i2 > 0 && height > 0) {
                        RectF rectF = k;
                        synchronized (rectF) {
                            rectF.setEmpty();
                            rectF.right = (float) i2;
                            rectF.bottom = (float) height;
                            float c2 = (float) c(rectF);
                            if (c2 != this.i.getTextSize()) {
                                p(0, c2);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.b = true;
        }
    }

    /* access modifiers changed from: package-private */
    public int d() {
        return Math.round(this.e);
    }

    /* access modifiers changed from: package-private */
    public int e() {
        return Math.round(this.d);
    }

    /* access modifiers changed from: package-private */
    public int f() {
        return Math.round(this.c);
    }

    /* access modifiers changed from: package-private */
    public int[] g() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public int h() {
        return this.a;
    }

    /* access modifiers changed from: package-private */
    public boolean k() {
        return s() && this.a != 0;
    }

    /* access modifiers changed from: package-private */
    public void l(AttributeSet attributeSet, int i2) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.j.obtainStyledAttributes(attributeSet, R$styleable.j, i2, 0);
        if (obtainStyledAttributes.hasValue(5)) {
            this.a = obtainStyledAttributes.getInt(5, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(4) ? obtainStyledAttributes.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(2) ? obtainStyledAttributes.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(1) ? obtainStyledAttributes.getDimension(1, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(3) && (resourceId = obtainStyledAttributes.getResourceId(3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            int length = obtainTypedArray.length();
            int[] iArr = new int[length];
            if (length > 0) {
                for (int i3 = 0; i3 < length; i3++) {
                    iArr[i3] = obtainTypedArray.getDimensionPixelSize(i3, -1);
                }
                this.f = b(iArr);
                r();
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!s()) {
            this.a = 0;
        } else if (this.a == 1) {
            if (!this.g) {
                DisplayMetrics displayMetrics = this.j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                t(dimension2, dimension3, dimension);
            }
            q();
        }
    }

    /* access modifiers changed from: package-private */
    public void m(int i2, int i3, int i4, int i5) {
        if (s()) {
            DisplayMetrics displayMetrics = this.j.getResources().getDisplayMetrics();
            t(TypedValue.applyDimension(i5, (float) i2, displayMetrics), TypedValue.applyDimension(i5, (float) i3, displayMetrics), TypedValue.applyDimension(i5, (float) i4, displayMetrics));
            if (q()) {
                a();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void n(int[] iArr, int i2) {
        if (s()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i2 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.j.getResources().getDisplayMetrics();
                    for (int i3 = 0; i3 < length; i3++) {
                        iArr2[i3] = Math.round(TypedValue.applyDimension(i2, (float) iArr[i3], displayMetrics));
                    }
                }
                this.f = b(iArr2);
                if (!r()) {
                    StringBuilder q = ic.q("None of the preset sizes is valid: ");
                    q.append(Arrays.toString(iArr));
                    throw new IllegalArgumentException(q.toString());
                }
            } else {
                this.g = false;
            }
            if (q()) {
                a();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void o(int i2) {
        if (!s()) {
            return;
        }
        if (i2 == 0) {
            this.a = 0;
            this.d = -1.0f;
            this.e = -1.0f;
            this.c = -1.0f;
            this.f = new int[0];
            this.b = false;
        } else if (i2 == 1) {
            DisplayMetrics displayMetrics = this.j.getResources().getDisplayMetrics();
            t(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (q()) {
                a();
            }
        } else {
            throw new IllegalArgumentException(ic.f("Unknown auto-size text type: ", i2));
        }
    }

    /* access modifiers changed from: package-private */
    public void p(int i2, float f2) {
        Resources resources;
        Context context = this.j;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        float applyDimension = TypedValue.applyDimension(i2, f2, resources.getDisplayMetrics());
        if (applyDimension != this.i.getPaint().getTextSize()) {
            this.i.getPaint().setTextSize(applyDimension);
            boolean isInLayout = this.i.isInLayout();
            if (this.i.getLayout() != null) {
                this.b = false;
                try {
                    Method i3 = i("nullLayouts");
                    if (i3 != null) {
                        i3.invoke(this.i, new Object[0]);
                    }
                } catch (Exception e2) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e2);
                }
                if (!isInLayout) {
                    this.i.requestLayout();
                } else {
                    this.i.forceLayout();
                }
                this.i.invalidate();
            }
        }
    }
}
