package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.ads.AdSize;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.http.util.LangUtils;

public class ConstraintLayout extends ViewGroup {
    SparseArray<View> b = new SparseArray<>();
    private ArrayList<ConstraintHelper> c = new ArrayList<>(4);
    private final ArrayList<r0> d = new ArrayList<>(100);
    s0 e = new s0();
    private int f = 0;
    private int g = 0;
    private int h = Integer.MAX_VALUE;
    private int i = Integer.MAX_VALUE;
    private boolean j = true;
    private int k = 7;
    private a l = null;
    private int m = -1;
    private HashMap<String, Integer> n = new HashMap<>();
    private int o = -1;
    private int p = -1;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        e(attributeSet);
    }

    private final r0 c(int i2) {
        if (i2 == 0) {
            return this.e;
        }
        View view = this.b.get(i2);
        if (view == null && (view = findViewById(i2)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.e;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).k0;
    }

    private void e(AttributeSet attributeSet) {
        this.e.J(this);
        this.b.put(getId(), this);
        this.l = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.a);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 3) {
                    this.f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                } else if (index == 4) {
                    this.g = obtainStyledAttributes.getDimensionPixelOffset(index, this.g);
                } else if (index == 1) {
                    this.h = obtainStyledAttributes.getDimensionPixelOffset(index, this.h);
                } else if (index == 2) {
                    this.i = obtainStyledAttributes.getDimensionPixelOffset(index, this.i);
                } else if (index == 59) {
                    this.k = obtainStyledAttributes.getInt(index, this.k);
                } else if (index == 8) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        a aVar = new a();
                        this.l = aVar;
                        aVar.e(getContext(), resourceId);
                    } catch (Resources.NotFoundException unused) {
                        this.l = null;
                    }
                    this.m = resourceId;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.e.C0(this.k);
    }

    /* JADX WARNING: Removed duplicated region for block: B:105:0x020a  */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x023e  */
    /* JADX WARNING: Removed duplicated region for block: B:117:0x0243  */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x0248  */
    /* JADX WARNING: Removed duplicated region for block: B:120:0x0250  */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x0259  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0261  */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x026c  */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x0277  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x01cc  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void f(int r24, int r25) {
        /*
        // Method dump skipped, instructions count: 647
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.f(int, int):void");
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
    }

    public Object b(int i2, Object obj) {
        if (i2 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.n;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.n.get(str);
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final r0 d(View view) {
        if (view == this) {
            return this.e;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).k0;
    }

    public void dispatchDraw(Canvas canvas) {
        Object tag;
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = (float) getWidth();
            float height = (float) getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (!(childAt.getVisibility() == 8 || (tag = childAt.getTag()) == null || !(tag instanceof String))) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((((float) parseInt) / 1080.0f) * width);
                        int i4 = (int) ((((float) parseInt2) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f2 = (float) i3;
                        float f3 = (float) i4;
                        float f4 = (float) (i3 + ((int) ((((float) parseInt3) / 1080.0f) * width)));
                        canvas.drawLine(f2, f3, f4, f3, paint);
                        float parseInt4 = (float) (i4 + ((int) ((((float) Integer.parseInt(split[3])) / 1920.0f) * height)));
                        canvas.drawLine(f4, f3, f4, parseInt4, paint);
                        canvas.drawLine(f4, parseInt4, f2, parseInt4, paint);
                        canvas.drawLine(f2, parseInt4, f2, f3, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f2, f3, f4, parseInt4, paint);
                        canvas.drawLine(f2, parseInt4, f4, f3, paint);
                    }
                }
            }
        }
    }

    public void g(int i2, Object obj, Object obj2) {
        if (i2 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.n == null) {
                this.n = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.n.put(str, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public void h() {
        this.e.p0();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        View a;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            r0 r0Var = layoutParams.k0;
            if ((childAt.getVisibility() != 8 || layoutParams.X || layoutParams.Y || isInEditMode) && !layoutParams.Z) {
                int m2 = r0Var.m();
                int n2 = r0Var.n();
                int w = r0Var.w() + m2;
                int o2 = r0Var.o() + n2;
                childAt.layout(m2, n2, w, o2);
                if ((childAt instanceof Placeholder) && (a = ((Placeholder) childAt).a()) != null) {
                    a.setVisibility(0);
                    a.layout(m2, n2, w, o2);
                }
            }
        }
        int size = this.c.size();
        if (size > 0) {
            for (int i7 = 0; i7 < size; i7++) {
                this.c.get(i7).e(this);
            }
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:279:0x05ff, code lost:
        if (r14.H != 1) goto L_0x0605;
     */
    /* JADX WARNING: Removed duplicated region for block: B:291:0x0618  */
    /* JADX WARNING: Removed duplicated region for block: B:311:0x066a  */
    /* JADX WARNING: Removed duplicated region for block: B:314:0x0679  */
    /* JADX WARNING: Removed duplicated region for block: B:316:0x067e  */
    /* JADX WARNING: Removed duplicated region for block: B:365:0x0742  */
    /* JADX WARNING: Removed duplicated region for block: B:387:0x0794  */
    /* JADX WARNING: Removed duplicated region for block: B:390:0x079c  */
    /* JADX WARNING: Removed duplicated region for block: B:393:0x07b3  */
    /* JADX WARNING: Removed duplicated region for block: B:493:0x09a4  */
    /* JADX WARNING: Removed duplicated region for block: B:496:0x09da  */
    /* JADX WARNING: Removed duplicated region for block: B:499:0x09e3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r52, int r53) {
        /*
        // Method dump skipped, instructions count: 2540
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    public void onViewAdded(View view) {
        super.onViewAdded(view);
        r0 d2 = d(view);
        if ((view instanceof Guideline) && !(d2 instanceof u0)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            u0 u0Var = new u0();
            layoutParams.k0 = u0Var;
            layoutParams.X = true;
            u0Var.r0(layoutParams.R);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.h();
            ((LayoutParams) view.getLayoutParams()).Y = true;
            if (!this.c.contains(constraintHelper)) {
                this.c.add(constraintHelper);
            }
        }
        this.b.put(view.getId(), view);
        this.j = true;
    }

    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.b.remove(view.getId());
        r0 d2 = d(view);
        this.e.q0(d2);
        this.c.remove(view);
        this.d.remove(d2);
        this.j = true;
    }

    public void removeView(View view) {
        super.removeView(view);
    }

    public void requestLayout() {
        super.requestLayout();
        this.j = true;
        this.o = -1;
        this.p = -1;
    }

    public void setId(int i2) {
        this.b.remove(getId());
        super.setId(i2);
        this.b.put(getId(), this);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        e(attributeSet);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public float A = 0.5f;
        public String B = null;
        int C = 1;
        public float D = -1.0f;
        public float E = -1.0f;
        public int F = 0;
        public int G = 0;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = 0;
        public float N = 1.0f;
        public float O = 1.0f;
        public int P = -1;
        public int Q = -1;
        public int R = -1;
        public boolean S = false;
        public boolean T = false;
        boolean U = true;
        boolean V = true;
        boolean W = false;
        boolean X = false;
        boolean Y = false;
        boolean Z = false;
        public int a = -1;
        int a0 = -1;
        public int b = -1;
        int b0 = -1;
        public float c = -1.0f;
        int c0 = -1;
        public int d = -1;
        int d0 = -1;
        public int e = -1;
        int e0 = -1;
        public int f = -1;
        int f0 = -1;
        public int g = -1;
        float g0 = 0.5f;
        public int h = -1;
        int h0;
        public int i = -1;
        int i0;
        public int j = -1;
        float j0;
        public int k = -1;
        r0 k0 = new r0();
        public int l = -1;
        public int m = -1;
        public int n = 0;
        public float o = 0.0f;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public int u = -1;
        public int v = -1;
        public int w = -1;
        public int x = -1;
        public int y = -1;
        public float z = 0.5f;

        private static class a {
            public static final SparseIntArray a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                a = sparseIntArray;
                sparseIntArray.append(34, 8);
                sparseIntArray.append(35, 9);
                sparseIntArray.append(37, 10);
                sparseIntArray.append(38, 11);
                sparseIntArray.append(43, 12);
                sparseIntArray.append(42, 13);
                sparseIntArray.append(16, 14);
                sparseIntArray.append(15, 15);
                sparseIntArray.append(13, 16);
                sparseIntArray.append(17, 2);
                sparseIntArray.append(19, 3);
                sparseIntArray.append(18, 4);
                sparseIntArray.append(51, 49);
                sparseIntArray.append(52, 50);
                sparseIntArray.append(23, 5);
                sparseIntArray.append(24, 6);
                sparseIntArray.append(25, 7);
                sparseIntArray.append(0, 1);
                sparseIntArray.append(39, 17);
                sparseIntArray.append(40, 18);
                sparseIntArray.append(22, 19);
                sparseIntArray.append(21, 20);
                sparseIntArray.append(55, 21);
                sparseIntArray.append(58, 22);
                sparseIntArray.append(56, 23);
                sparseIntArray.append(53, 24);
                sparseIntArray.append(57, 25);
                sparseIntArray.append(54, 26);
                sparseIntArray.append(30, 29);
                sparseIntArray.append(44, 30);
                sparseIntArray.append(20, 44);
                sparseIntArray.append(32, 45);
                sparseIntArray.append(46, 46);
                sparseIntArray.append(31, 47);
                sparseIntArray.append(45, 48);
                sparseIntArray.append(11, 27);
                sparseIntArray.append(10, 28);
                sparseIntArray.append(47, 31);
                sparseIntArray.append(26, 32);
                sparseIntArray.append(49, 33);
                sparseIntArray.append(48, 34);
                sparseIntArray.append(50, 35);
                sparseIntArray.append(28, 36);
                sparseIntArray.append(27, 37);
                sparseIntArray.append(29, 38);
                sparseIntArray.append(33, 39);
                sparseIntArray.append(41, 40);
                sparseIntArray.append(36, 41);
                sparseIntArray.append(14, 42);
                sparseIntArray.append(12, 43);
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i2;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.a);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                int i4 = a.a.get(index);
                switch (i4) {
                    case 1:
                        this.R = obtainStyledAttributes.getInt(index, this.R);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.m);
                        this.m = resourceId;
                        if (resourceId == -1) {
                            this.m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.n = obtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        float f2 = obtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        this.o = f2;
                        if (f2 < 0.0f) {
                            this.o = (360.0f - f2) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.a = obtainStyledAttributes.getDimensionPixelOffset(index, this.a);
                        break;
                    case 6:
                        this.b = obtainStyledAttributes.getDimensionPixelOffset(index, this.b);
                        break;
                    case 7:
                        this.c = obtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.d);
                        this.d = resourceId2;
                        if (resourceId2 == -1) {
                            this.d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.e);
                        this.e = resourceId3;
                        if (resourceId3 == -1) {
                            this.e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f);
                        this.f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.g);
                        this.g = resourceId5;
                        if (resourceId5 == -1) {
                            this.g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.h);
                        this.h = resourceId6;
                        if (resourceId6 == -1) {
                            this.h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.i);
                        this.i = resourceId7;
                        if (resourceId7 == -1) {
                            this.i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.j);
                        this.j = resourceId8;
                        if (resourceId8 == -1) {
                            this.j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.k);
                        this.k = resourceId9;
                        if (resourceId9 == -1) {
                            this.k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.l);
                        this.l = resourceId10;
                        if (resourceId10 == -1) {
                            this.l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.p);
                        this.p = resourceId11;
                        if (resourceId11 == -1) {
                            this.p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.q);
                        this.q = resourceId12;
                        if (resourceId12 == -1) {
                            this.q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.r);
                        this.r = resourceId13;
                        if (resourceId13 == -1) {
                            this.r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId14;
                        if (resourceId14 == -1) {
                            this.s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                        this.t = obtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                        this.u = obtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                        this.v = obtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                        this.w = obtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                        this.x = obtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                        this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                        this.S = obtainStyledAttributes.getBoolean(index, this.S);
                        break;
                    case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                        this.T = obtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                        this.z = obtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                        this.A = obtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.H = i5;
                        if (i5 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i6 = obtainStyledAttributes.getInt(index, 0);
                        this.I = i6;
                        if (i6 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                        try {
                            this.J = obtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.J) == -2) {
                                this.J = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                        try {
                            this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                        this.N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.N));
                        break;
                    case 36:
                        try {
                            this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                        try {
                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.O));
                        break;
                    default:
                        switch (i4) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.B = string;
                                this.C = -1;
                                if (string == null) {
                                    break;
                                } else {
                                    int length = string.length();
                                    int indexOf = this.B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i2 = 0;
                                    } else {
                                        String substring = this.B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.C = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.C = 1;
                                        }
                                        i2 = indexOf + 1;
                                    }
                                    int indexOf2 = this.B.indexOf(58);
                                    if (indexOf2 >= 0 && indexOf2 < length - 1) {
                                        String substring2 = this.B.substring(i2, indexOf2);
                                        String substring3 = this.B.substring(indexOf2 + 1);
                                        if (substring2.length() > 0 && substring3.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring2);
                                                float parseFloat2 = Float.parseFloat(substring3);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.C == 1) {
                                                        Math.abs(parseFloat2 / parseFloat);
                                                        break;
                                                    } else {
                                                        Math.abs(parseFloat / parseFloat2);
                                                        break;
                                                    }
                                                }
                                            } catch (NumberFormatException unused5) {
                                                break;
                                            }
                                        }
                                    } else {
                                        String substring4 = this.B.substring(i2);
                                        if (substring4.length() <= 0) {
                                            break;
                                        } else {
                                            Float.parseFloat(substring4);
                                            continue;
                                        }
                                    }
                                }
                                break;
                            case 45:
                                this.D = obtainStyledAttributes.getFloat(index, this.D);
                                continue;
                            case ModuleDescriptor.MODULE_VERSION /*{ENCODED_INT: 46}*/:
                                this.E = obtainStyledAttributes.getFloat(index, this.E);
                                continue;
                            case 47:
                                this.F = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.P = obtainStyledAttributes.getDimensionPixelOffset(index, this.P);
                                continue;
                            case AdSize.PORTRAIT_AD_HEIGHT /*{ENCODED_INT: 50}*/:
                                this.Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                                continue;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.X = false;
            this.U = true;
            this.V = true;
            int i2 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i2 == -2 && this.S) {
                this.U = false;
                this.H = 1;
            }
            int i3 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i3 == -2 && this.T) {
                this.V = false;
                this.I = 1;
            }
            if (i2 == 0 || i2 == -1) {
                this.U = false;
                if (i2 == 0 && this.H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.S = true;
                }
            }
            if (i3 == 0 || i3 == -1) {
                this.V = false;
                if (i3 == 0 && this.I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.T = true;
                }
            }
            if (this.c != -1.0f || this.a != -1 || this.b != -1) {
                this.X = true;
                this.U = true;
                this.V = true;
                if (!(this.k0 instanceof u0)) {
                    this.k0 = new u0();
                }
                ((u0) this.k0).r0(this.R);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x004c  */
        /* JADX WARNING: Removed duplicated region for block: B:17:0x0053  */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x005a  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0060  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x0066  */
        /* JADX WARNING: Removed duplicated region for block: B:33:0x007c  */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x0084  */
        @android.annotation.TargetApi(17)
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void resolveLayoutDirection(int r7) {
            /*
            // Method dump skipped, instructions count: 265
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
