package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.annotation.CallSuper;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager$DecorView;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.3D  reason: invalid class name */
public class AnonymousClass3D extends ViewGroup {
    public static byte[] A0u;
    public static String[] A0v;
    public static final int[] A0w = {16842931};
    public static final Interpolator A0x = new AnonymousClass32();
    public static final AnonymousClass3C A0y = new AnonymousClass3C();
    public static final Comparator<AnonymousClass35> A0z = new AnonymousClass31();
    public int A00;
    public AbstractC01842k A01;
    public float A02 = -3.4028235E38f;
    public float A03;
    public float A04;
    public float A05;
    public float A06;
    public float A07 = Float.MAX_VALUE;
    public int A08 = -1;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public int A0G;
    public int A0H;
    public int A0I;
    public int A0J;
    public int A0K;
    public int A0L = 1;
    public int A0M;
    public int A0N;
    public int A0O = -1;
    public int A0P = 0;
    public int A0Q;
    public int A0R;
    public Drawable A0S;
    public Parcelable A0T = null;
    public VelocityTracker A0U;
    public EdgeEffect A0V;
    public EdgeEffect A0W;
    public Scroller A0X;
    public AnonymousClass38 A0Y;
    public AnonymousClass38 A0Z;
    public AnonymousClass39 A0a;
    public AnonymousClass3A A0b;
    public ClassLoader A0c = null;
    public ArrayList<View> A0d;
    public List<ViewPager.OnAdapterChangeListener> A0e;
    public List<AnonymousClass38> A0f;
    public boolean A0g;
    public boolean A0h;
    public boolean A0i = true;
    public boolean A0j;
    public boolean A0k;
    public boolean A0l;
    public boolean A0m;
    public boolean A0n = false;
    public boolean A0o;
    public boolean A0p;
    public final Rect A0q = new Rect();
    public final AnonymousClass35 A0r = new AnonymousClass35();
    public final Runnable A0s = new AnonymousClass33(this);
    public final ArrayList<AnonymousClass35> A0t = new ArrayList<>();

    public static String A08(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0u, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 104);
        }
        return new String(copyOfRange);
    }

    public static void A0C() {
        A0u = new byte[]{-99, -70, -69, -99, -62, -14, 3, 9, 7, 20, -62, 5, 14, 3, 21, 21, -36, -62, -48, 0, 17, 23, 21, 34, -48, 25, 20, -22, -48, -34, 14, 48, 45, 32, 42, 35, 43, 31, 50, 39, 33, -34, 31, 34, 31, 46, 50, 35, 48, -8, -34, -30, 54, 49, 49, -30, 53, 47, 35, 46, 46, -3, -30, 38, 39, 40, 35, 55, 46, 54, 43, 48, 41, -30, 54, 49, -30, -66, -78, -8, 1, 7, 0, -10, -52, -78, -69, -39, -26, -26, -25, -20, -104, -39, -36, -36, -104, -24, -39, -33, -35, -22, -104, -36, -35, -37, -25, -22, -104, -18, -31, -35, -17, -104, -36, -19, -22, -31, -26, -33, -104, -28, -39, -15, -25, -19, -20, -10, 9, 21, 25, 9, 23, 24, 9, 8, -60, 19, 10, 10, 23, 7, 22, 9, 9, 18, -60, 20, 5, 11, 9, -60, 16, 13, 17, 13, 24, -60, -10, 10, 7, -62, 3, 18, 18, 14, 11, 5, 3, 22, 11, 17, 16, -55, 21, -62, -14, 3, 9, 7, 20, -29, 6, 3, 18, 22, 7, 20, -62, 5, 10, 3, 16, 9, 7, 6, -62, 22, 10, 7, -62, 3, 6, 3, 18, 22, 7, 20, -55, 21, -62, 5, 17, 16, 22, 7, 16, 22, 21, -62, 25, 11, 22, 10, 17, 23, 22, -62, 5, 3, 14, 14, 11, 16, 9, -62, -14, 3, 9, 7, 20, -29, 6, 3, 18, 22, 7, 20, -59, 16, 17, 22, 11, 8, 27, -26, 3, 22, 3, -11, 7, 22, -27, 10, 3, 16, 9, 7, 6, -61, -62, -25, 26, 18, 7, 5, 22, 7, 6, -62, 3, 6, 3, 18, 22, 7, 20, -62, 11, 22, 7, 15, -62, 5, 17, 23, 16, 22, -36, -62, -19, 0, -4, 14, -25, -8, -2, -4, 9, 25, 42, 42, 39, 47, 11, 27, 42, 39, 36, 36, -40, 44, 42, 33, 29, 28, -40, 44, 39, -40, 30, 33, 38, 28, -40, 30, 39, 27, 45, 43, -40, 26, 25, 43, 29, 28, -40, 39, 38, -40, 38, 39, 38, -27, 27, 32, 33, 36, 28, -40, 27, 45, 42, 42, 29, 38, 44, -40, 30, 39, 27, 45, 43, 29, 28, -40, 46, 33, 29, 47, -40, 76, 75, 45, 62, 68, 66, 48, 64, 79, 76, 73, 73, 66, 65, -3, 65, 70, 65, -3, 75, 76, 81, -3, 64, 62, 73, 73, -3, 80, 82, 77, 66, 79, 64, 73, 62, 80, 80, -3, 70, 74, 77, 73, 66, 74, 66, 75, 81, 62, 81, 70, 76, 75};
    }

    public static void A0D() {
        A0v = new String[]{"Pb5dMBpLoD8olSqqN3M1wt71s6WfJWWx", "mawes8eGWKEfT5kg0DwbKE", "yCX0UAcI", "nBGVAWTalDrx8Q3Q0HTp4hPpqgaJoZ5h", "", "", "gKpLqM1fc4CgqUT7jB7tIrf4xsKdVFyY", "wKHjR3FqXT8StRIGs0zAAfuJmbbhub4H"};
    }

    static {
        A0D();
        A0C();
    }

    public AnonymousClass3D(Context context) {
        super(context);
        A0E();
    }

    private final float A00(float f) {
        return (float) Math.sin((double) ((f - 0.5f) * 0.47123894f));
    }

    private int A01(int i, float f, int i2, int i3) {
        float f2;
        if (Math.abs(i3) <= this.A0H || Math.abs(i2) <= this.A0K) {
            if (i >= this.A00) {
                f2 = 0.4f;
            } else {
                f2 = 0.6f;
            }
            i += (int) (f + f2);
        } else if (i2 <= 0) {
            i++;
        }
        if (this.A0t.size() <= 0) {
            return i;
        }
        ArrayList<AnonymousClass35> arrayList = this.A0t;
        return Math.max(this.A0t.get(0).A02, Math.min(i, arrayList.get(arrayList.size() - 1).A02));
    }

    private Rect A02(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    private AnonymousClass35 A03() {
        float f;
        int clientWidth = getClientWidth();
        float scrollOffset = 0.0f;
        if (clientWidth > 0) {
            f = ((float) getScrollX()) / ((float) clientWidth);
        } else {
            f = 0.0f;
        }
        if (clientWidth > 0) {
            scrollOffset = ((float) this.A0M) / ((float) clientWidth);
        }
        int i = -1;
        float leftBound = 0.0f;
        float rightBound = 0.0f;
        boolean z = true;
        AnonymousClass35 r10 = null;
        int i2 = 0;
        while (i2 < this.A0t.size()) {
            AnonymousClass35 r5 = this.A0t.get(i2);
            if (!z && r5.A02 != i + 1) {
                r5 = this.A0r;
                r5.A00 = leftBound + rightBound + scrollOffset;
                r5.A02 = i + 1;
                r5.A01 = this.A01.A04(r5.A02);
                i2--;
            }
            leftBound = r5.A00;
            float rightBound2 = r5.A01 + leftBound + scrollOffset;
            if (!z) {
                int i3 = (f > leftBound ? 1 : (f == leftBound ? 0 : -1));
                String[] strArr = A0v;
                if (strArr[4].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0v;
                strArr2[3] = "VrUwTTzuyHD2SkMMCenWDHvarMqbXCCI";
                strArr2[6] = "LX2NnyEsDXWEx3dFbPH8p7fzI1U1dTZ8";
                if (i3 < 0) {
                    return r10;
                }
            }
            if (f >= rightBound2) {
                int size = this.A0t.size() - 1;
                String[] strArr3 = A0v;
                if (strArr3[3].charAt(15) != strArr3[6].charAt(15)) {
                    A0v[2] = "sbP3P6ChvdnfvWI";
                    if (i2 == size) {
                    }
                } else {
                    A0v[1] = "kvGf4Zg53U8bz7GLeUNnCLzy4o";
                    if (i2 == size) {
                    }
                }
                z = false;
                i = r5.A02;
                rightBound = r5.A01;
                r10 = r5;
                i2++;
            }
            return r5;
        }
        return r10;
    }

    private final AnonymousClass35 A04(int i) {
        for (int i2 = 0; i2 < this.A0t.size(); i2++) {
            AnonymousClass35 r1 = this.A0t.get(i2);
            if (r1.A02 == i) {
                return r1;
            }
        }
        return null;
    }

    private final AnonymousClass35 A05(int i, int i2) {
        AnonymousClass35 r1 = new AnonymousClass35();
        r1.A02 = i;
        r1.A03 = this.A01.A08(this, i);
        r1.A01 = this.A01.A04(i);
        if (i2 < 0 || i2 >= this.A0t.size()) {
            this.A0t.add(r1);
        } else {
            this.A0t.add(i2, r1);
        }
        return r1;
    }

    private final AnonymousClass35 A06(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return A07(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    private final AnonymousClass35 A07(View view) {
        for (int i = 0; i < this.A0t.size(); i++) {
            AnonymousClass35 r2 = this.A0t.get(i);
            if (this.A01.A0C(view, r2.A03)) {
                return r2;
            }
        }
        String[] strArr = A0v;
        if (strArr[4].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A0v[1] = "T6ty";
        return null;
    }

    private void A09() {
        this.A0k = false;
        this.A0m = false;
        VelocityTracker velocityTracker = this.A0U;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            String[] strArr = A0v;
            if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            A0v[1] = "yoRarqzFlsm2scdQtgnfRphmjo";
            this.A0U = null;
        }
    }

    private void A0A() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((AnonymousClass36) getChildAt(i).getLayoutParams()).A05) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    private void A0B() {
        if (this.A0F != 0) {
            ArrayList<View> arrayList = this.A0d;
            if (arrayList == null) {
                this.A0d = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.A0d.add(getChildAt(i));
            }
            Collections.sort(this.A0d, A0y);
        }
    }

    private final void A0E() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.A0X = new Scroller(context, A0x);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.A0R = viewConfiguration.getScaledPagingTouchSlop();
        this.A0K = (int) (400.0f * f);
        this.A0J = viewConfiguration.getScaledMaximumFlingVelocity();
        this.A0V = new EdgeEffect(context);
        this.A0W = new EdgeEffect(context);
        this.A0H = (int) (25.0f * f);
        this.A0C = (int) (2.0f * f);
        this.A0E = (int) (16.0f * f);
        AnonymousClass2z.A0A(this, new C0826Sw(this));
        if (AnonymousClass2z.A00(this) == 0) {
            AnonymousClass2z.A09(this, 1);
        }
        AnonymousClass2z.A0B(this, new C0825Sv(this));
    }

    private void A0F(int i) {
        AnonymousClass38 r0 = this.A0Z;
        List<AnonymousClass38> list = this.A0f;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A0f.get(i2);
            }
        }
        AnonymousClass38 r02 = this.A0Y;
    }

    private void A0G(int i) {
        AnonymousClass38 r0 = this.A0Z;
        List<AnonymousClass38> list = this.A0f;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A0f.get(i2);
            }
        }
        AnonymousClass38 r02 = this.A0Y;
    }

    /* JADX INFO: Multiple debug info for r15v0 'this'  com.facebook.ads.redexgen.X.3D: [D('curIndex' int), D('e' android.content.res.Resources$NotFoundException), D('resName' java.lang.String), D('childCount' int)] */
    /* JADX INFO: Multiple debug info for r0v73 'ii'  com.facebook.ads.redexgen.X.35: [D('ii' com.facebook.ads.redexgen.X.35), D('pos' int)] */
    private final void A0H(int i) {
        String str;
        AnonymousClass35 ii;
        AnonymousClass35 ii2;
        float extraWidthLeft;
        AnonymousClass35 r3;
        float extraWidthLeft2;
        AnonymousClass35 r12 = null;
        int i2 = this.A00;
        if (i2 != i) {
            r12 = A04(i2);
            this.A00 = i;
        }
        if (this.A01 == null) {
            A0B();
        } else if (this.A0o) {
            A0B();
        } else if (getWindowToken() != null) {
            int i3 = this.A0L;
            int max = Math.max(0, this.A00 - i3);
            int pageLimit = this.A01.A05();
            int min = Math.min(pageLimit - 1, this.A00 + i3);
            if (pageLimit == this.A0G) {
                AnonymousClass35 r8 = null;
                if (A0v[2].length() != 14) {
                    A0v[1] = "Tot0RAE";
                    int i4 = 0;
                    while (true) {
                        if (i4 >= this.A0t.size()) {
                            break;
                        }
                        AnonymousClass35 r2 = this.A0t.get(i4);
                        if (r2.A02 < this.A00) {
                            i4++;
                        } else if (r2.A02 == this.A00) {
                            r8 = r2;
                        }
                    }
                    if (r8 == null && pageLimit > 0) {
                        int i5 = this.A00;
                        if (A0v[1].length() != 12) {
                            A0v[2] = "0";
                            r8 = A05(i5, i4);
                        } else {
                            String[] strArr = A0v;
                            strArr[4] = "";
                            strArr[5] = "";
                            r8 = A05(i5, i4);
                        }
                    }
                    if (r8 != null) {
                        float f = 0.0f;
                        int i6 = i4 - 1;
                        if (i6 >= 0) {
                            AnonymousClass35 ii3 = this.A0t.get(i6);
                            String[] strArr2 = A0v;
                            if (strArr2[3].charAt(15) != strArr2[6].charAt(15)) {
                                A0v[1] = "VNMCyWdkMCax4jTa2KYBa9F64T8dlp";
                                ii2 = ii3;
                            }
                        } else {
                            ii2 = null;
                        }
                        int clientWidth = getClientWidth();
                        if (clientWidth <= 0) {
                            extraWidthLeft = 0.0f;
                        } else {
                            extraWidthLeft = (((float) getPaddingLeft()) / ((float) clientWidth)) + (2.0f - r8.A01);
                        }
                        for (int i7 = this.A00 - 1; i7 >= 0; i7--) {
                            if (f < extraWidthLeft || i7 >= max) {
                                if (ii2 == null || i7 != ii2.A02) {
                                    f += A05(i7, i6 + 1).A01;
                                    i4++;
                                    ii2 = i6 >= 0 ? this.A0t.get(i6) : null;
                                } else {
                                    f += ii2.A01;
                                    String[] strArr3 = A0v;
                                    if (strArr3[7].charAt(10) == strArr3[0].charAt(10)) {
                                        String[] strArr4 = A0v;
                                        strArr4[4] = "";
                                        strArr4[5] = "";
                                        i6--;
                                        ii2 = i6 >= 0 ? this.A0t.get(i6) : null;
                                    }
                                }
                            } else if (ii2 == null) {
                                break;
                            } else if (i7 == ii2.A02 && !ii2.A04) {
                                this.A0t.remove(i6);
                                this.A01.A0B(this, i7, ii2.A03);
                                i6--;
                                i4--;
                                if (i6 >= 0) {
                                    ii2 = this.A0t.get(i6);
                                } else {
                                    ii2 = null;
                                }
                            }
                        }
                        float f2 = r8.A01;
                        int i8 = i4 + 1;
                        if (f2 < 2.0f) {
                            if (i8 < this.A0t.size()) {
                                r3 = this.A0t.get(i8);
                            } else {
                                r3 = null;
                            }
                            if (clientWidth <= 0) {
                                extraWidthLeft2 = 0.0f;
                            } else {
                                float extraWidthLeft3 = (float) getPaddingRight();
                                float f3 = (float) clientWidth;
                                String[] strArr5 = A0v;
                                if (strArr5[4].length() != strArr5[5].length()) {
                                    throw new RuntimeException();
                                }
                                String[] strArr6 = A0v;
                                strArr6[4] = "";
                                strArr6[5] = "";
                                extraWidthLeft2 = (extraWidthLeft3 / f3) + 2.0f;
                            }
                            for (int i9 = this.A00 + 1; i9 < pageLimit; i9++) {
                                if (f2 < extraWidthLeft2 || i9 <= min) {
                                    if (r3 == null || i9 != r3.A02) {
                                        AnonymousClass35 A052 = A05(i9, i8);
                                        i8++;
                                        f2 += A052.A01;
                                        r3 = i8 < this.A0t.size() ? this.A0t.get(i8) : null;
                                    } else {
                                        f2 += r3.A01;
                                        i8++;
                                        r3 = i8 < this.A0t.size() ? this.A0t.get(i8) : null;
                                    }
                                } else if (r3 == null) {
                                    break;
                                } else if (i9 == r3.A02 && !r3.A04) {
                                    this.A0t.remove(i8);
                                    this.A01.A0B(this, i9, r3.A03);
                                    if (i8 < this.A0t.size()) {
                                        r3 = this.A0t.get(i8);
                                    } else {
                                        r3 = null;
                                    }
                                }
                            }
                        }
                        A0R(r8, i4, r12);
                    }
                    int childCount = getChildCount();
                    for (int i10 = 0; i10 < childCount; i10++) {
                        View childAt = getChildAt(i10);
                        AnonymousClass36 r32 = (AnonymousClass36) childAt.getLayoutParams();
                        r32.A01 = i10;
                        if (!r32.A05 && r32.A00 == 0.0f) {
                            AnonymousClass35 A072 = A07(childAt);
                            String[] strArr7 = A0v;
                            if (strArr7[7].charAt(10) == strArr7[0].charAt(10)) {
                                A0v[1] = "EEa7ILjnbFiKaMBJBW0FEjvS9loAIL";
                                if (A072 == null) {
                                }
                            } else if (A072 == null) {
                            }
                            r32.A00 = A072.A01;
                            r32.A02 = A072.A02;
                        }
                    }
                    A0B();
                    String[] strArr8 = A0v;
                    if (strArr8[4].length() != strArr8[5].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr9 = A0v;
                    strArr9[7] = "fAvJTe45YQ8jwRLJzle6w88GhXZAW5fe";
                    strArr9[0] = "XHTmtVqtTM8ykl9XiQ4ZuPNQzfhQsr72";
                    if (hasFocus()) {
                        View findFocus = findFocus();
                        String[] strArr10 = A0v;
                        if (strArr10[3].charAt(15) != strArr10[6].charAt(15)) {
                            String[] strArr11 = A0v;
                            strArr11[3] = "98nQxxcA6vj5924MyChW7mkeiNJnWKv2";
                            strArr11[6] = "ju5RZqhAYuaQhiOPGNIJcLOaoEeV3OP8";
                            if (findFocus != null) {
                                ii = A06(findFocus);
                            } else {
                                ii = null;
                            }
                            if (ii == null || ii.A02 != this.A00) {
                                for (int i11 = 0; i11 < getChildCount(); i11++) {
                                    View childAt2 = getChildAt(i11);
                                    AnonymousClass35 A073 = A07(childAt2);
                                    if (A073 != null && A073.A02 == this.A00 && childAt2.requestFocus(2)) {
                                        return;
                                    }
                                }
                                return;
                            }
                            return;
                        }
                        throw new RuntimeException();
                    }
                    return;
                }
            } else {
                try {
                    str = getResources().getResourceName(getId());
                } catch (Resources.NotFoundException unused) {
                    int id = getId();
                    if (A0v[2].length() != 14) {
                        A0v[2] = "3cJ8G";
                        str = Integer.toHexString(id);
                    }
                }
                throw new IllegalStateException(A08(158, 142, 58) + this.A0G + A08(77, 9, 42) + pageLimit + A08(18, 11, 72) + str + A08(4, 14, 58) + getClass() + A08(29, 22, 86) + this.A01.getClass());
            }
            throw new RuntimeException();
        }
    }

    private void A0I(int i, float f, int i2) {
        AnonymousClass38 r0 = this.A0Z;
        List<AnonymousClass38> list = this.A0f;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.A0f.get(i3);
            }
        }
        AnonymousClass38 r02 = this.A0Y;
    }

    @CallSuper
    private final void A0J(int scrollX, float f, int paddingLeft) {
        int max;
        if (this.A0D > 0) {
            int i = getScrollX();
            int paddingLeft2 = getPaddingLeft();
            int paddingRight = getPaddingRight();
            if (A0v[1].length() != 12) {
                String[] strArr = A0v;
                strArr[3] = "hSwONVQ9BwzgmNPK4tziO3X6uj4eQvsQ";
                strArr[6] = "gKhZoL4mhYlFRC9fFMXnjqdiW6EOuKfZ";
                int width = getWidth();
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    AnonymousClass36 r7 = (AnonymousClass36) childAt.getLayoutParams();
                    if (r7.A05) {
                        int i3 = r7.A04 & 7;
                        if (i3 == 1) {
                            max = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft2);
                        } else if (i3 == 3) {
                            max = paddingLeft2;
                            paddingLeft2 += childAt.getWidth();
                        } else if (i3 != 5) {
                            max = paddingLeft2;
                        } else {
                            max = (width - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        int left = (max + i) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                    }
                }
            } else {
                throw new RuntimeException();
            }
        }
        A0I(scrollX, f, paddingLeft);
        if (this.A0a != null) {
            getScrollX();
            int childCount2 = getChildCount();
            for (int i4 = 0; i4 < childCount2; i4++) {
                View childAt2 = getChildAt(i4);
                if (!((AnonymousClass36) childAt2.getLayoutParams()).A05) {
                    childAt2.getLeft();
                    getClientWidth();
                    throw null;
                }
            }
        }
        this.A0g = true;
    }

    /* JADX INFO: Multiple debug info for r10v1 int: [D('distance' float), D('wasScrolling' boolean)] */
    /* JADX INFO: Multiple debug info for r0v9 int: [D('velocity' int), D('halfWidth' int)] */
    private final void A0K(int i, int i2, int width) {
        int dx;
        int dy;
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.A0X;
        if (scroller == null || scroller.isFinished()) {
            dx = 0;
        } else {
            dx = 1;
        }
        if (dx != 0) {
            if (this.A0l) {
                dy = this.A0X.getCurrX();
            } else {
                dy = this.A0X.getStartX();
            }
            this.A0X.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            dy = getScrollX();
        }
        int scrollY = getScrollY();
        int i3 = i - dy;
        int velocity = i2 - scrollY;
        if (i3 == 0 && velocity == 0) {
            A0S(false);
            A0g();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i4 = clientWidth / 2;
        float A002 = ((float) i4) + (((float) i4) * A00(Math.min(1.0f, (((float) Math.abs(i3)) * 1.0f) / ((float) clientWidth))));
        int halfWidth = Math.abs(width);
        if (halfWidth > 0) {
            float f = (float) halfWidth;
            if (A0v[1].length() != 12) {
                String[] strArr = A0v;
                strArr[4] = "";
                strArr[5] = "";
                abs = Math.round(Math.abs(A002 / f) * 1000.0f) * 4;
            } else {
                throw new RuntimeException();
            }
        } else {
            abs = (int) ((1.0f + (((float) Math.abs(i3)) / (((float) this.A0M) + (((float) clientWidth) * this.A01.A04(this.A00))))) * 100.0f);
        }
        int min = Math.min(abs, 600);
        this.A0l = false;
        this.A0X.startScroll(dy, scrollY, i3, velocity, min);
        AnonymousClass2z.A07(this);
    }

    /* JADX INFO: Multiple debug info for r4v0 'this'  com.facebook.ads.redexgen.X.3D: [D('ii' com.facebook.ads.redexgen.X.35), D('widthWithMargin' int)] */
    private void A0L(int i, int i2, int i3, int i4) {
        float f;
        if (i2 > 0) {
            ArrayList<AnonymousClass35> arrayList = this.A0t;
            String[] strArr = A0v;
            if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            A0v[1] = "xS6wP2kv8Ukjp2mlI4OFB7EI";
            if (!arrayList.isEmpty()) {
                boolean isFinished = this.A0X.isFinished();
                if (A0v[1].length() != 12) {
                    A0v[2] = "M3IvNYMGgF0qb538wmgDMK0nNkgqAt";
                    if (!isFinished) {
                        this.A0X.setFinalX(getCurrentItem() * getClientWidth());
                        return;
                    }
                    scrollTo((int) (((float) (((i - getPaddingLeft()) - getPaddingRight()) + i3)) * (((float) getScrollX()) / ((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)))), getScrollY());
                    return;
                }
                throw new RuntimeException();
            }
        }
        AnonymousClass35 A042 = A04(this.A00);
        if (A042 != null) {
            f = Math.min(A042.A00, this.A07);
        } else {
            f = 0.0f;
        }
        int paddingLeft = (int) (((float) ((i - getPaddingLeft()) - getPaddingRight())) * f);
        if (paddingLeft != getScrollX()) {
            A0S(false);
            scrollTo(paddingLeft, getScrollY());
        }
    }

    private final void A0M(int i, boolean z) {
        this.A0o = false;
        A0O(i, z, false);
    }

    private void A0N(int destX, boolean z, int i, boolean z2) {
        AnonymousClass35 A042 = A04(destX);
        int i2 = 0;
        if (A042 != null) {
            i2 = (int) (((float) getClientWidth()) * Math.max(this.A02, Math.min(A042.A00, this.A07)));
        }
        if (A0v[2].length() != 14) {
            String[] strArr = A0v;
            strArr[3] = "qWyJthdIKprwmupmlWytZXkwKuTz6nwm";
            strArr[6] = "fDmSwMvEmt93O90vXMKXMmFP8biUMO95";
            if (z) {
                A0K(i2, 0, i);
                if (z2) {
                    A0F(destX);
                    return;
                }
                return;
            }
            if (z2) {
                A0F(destX);
            }
            A0S(false);
            scrollTo(i2, 0);
            A0a(i2);
            return;
        }
        throw new RuntimeException();
    }

    private final void A0O(int i, boolean z, boolean z2) {
        A0P(i, z, z2, 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0065, code lost:
        if (r6 < r4) goto L_0x0067;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void A0P(int r6, boolean r7, boolean r8, int r9) {
        /*
        // Method dump skipped, instructions count: 153
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass3D.A0P(int, boolean, boolean, int):void");
    }

    private void A0Q(MotionEvent motionEvent) {
        int i;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.A08) {
            if (actionIndex == 0) {
                i = 1;
            } else {
                i = 0;
            }
            this.A05 = motionEvent.getX(i);
            String[] strArr = A0v;
            if (strArr[4].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0v;
            strArr2[4] = "";
            strArr2[5] = "";
            this.A08 = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.A0U;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* JADX INFO: Multiple debug info for r11v0 int: [D('i' int), D('pos' int)] */
    private void A0R(AnonymousClass35 r13, int i, AnonymousClass35 r15) {
        float f;
        float offset;
        float f2;
        AnonymousClass35 r3;
        AnonymousClass35 r7;
        int pos = this.A01.A05();
        int clientWidth = getClientWidth();
        if (clientWidth > 0) {
            f = ((float) this.A0M) / ((float) clientWidth);
        } else {
            f = 0.0f;
        }
        if (r15 != null) {
            int i2 = r15.A02;
            if (i2 < r13.A02) {
                int i3 = 0;
                float f3 = r15.A00 + r15.A01 + f;
                int i4 = i2 + 1;
                while (i4 <= r13.A02 && i3 < this.A0t.size()) {
                    AnonymousClass35 r72 = this.A0t.get(i3);
                    while (true) {
                        r7 = r72;
                        if (i4 > r7.A02 && i3 < this.A0t.size() - 1) {
                            i3++;
                            r72 = this.A0t.get(i3);
                        }
                    }
                    while (i4 < r7.A02) {
                        AbstractC01842k r8 = this.A01;
                        if (A0v[2].length() != 14) {
                            A0v[2] = "unjnr1JPHveRA3A";
                            f3 += r8.A04(i4) + f;
                            i4++;
                        } else {
                            throw new RuntimeException();
                        }
                    }
                    r7.A00 = f3;
                    f3 += r7.A01 + f;
                    i4++;
                }
            } else if (i2 > r13.A02) {
                int size = this.A0t.size() - 1;
                float f4 = r15.A00;
                int i5 = i2 - 1;
                while (i5 >= r13.A02 && size >= 0) {
                    AnonymousClass35 r32 = this.A0t.get(size);
                    while (true) {
                        r3 = r32;
                        if (i5 < r3.A02 && size > 0) {
                            size--;
                            r32 = this.A0t.get(size);
                        }
                    }
                    while (true) {
                        int i6 = r3.A02;
                        String[] strArr = A0v;
                        if (strArr[4].length() == strArr[5].length()) {
                            A0v[2] = "eK1wjFwqyv9CJUk";
                            if (i5 <= i6) {
                                break;
                            }
                        } else {
                            A0v[1] = "tUoZSKhLB59JJ";
                            if (i5 <= i6) {
                                break;
                            }
                        }
                        f4 -= this.A01.A04(i5) + f;
                        i5--;
                    }
                    f4 -= r3.A01 + f;
                    r3.A00 = f4;
                    i5--;
                }
            }
        }
        int size2 = this.A0t.size();
        float f5 = r13.A00;
        int i7 = r13.A02 - 1;
        if (r13.A02 == 0) {
            offset = r13.A00;
        } else {
            offset = -3.4028235E38f;
        }
        this.A02 = offset;
        if (r13.A02 == pos - 1) {
            f2 = (r13.A00 + r13.A01) - 1.0f;
        } else {
            f2 = Float.MAX_VALUE;
        }
        this.A07 = f2;
        int i8 = i - 1;
        while (i8 >= 0) {
            AnonymousClass35 r2 = this.A0t.get(i8);
            while (i7 > r2.A02) {
                f5 -= this.A01.A04(i7) + f;
                i7--;
            }
            f5 -= r2.A01 + f;
            r2.A00 = f5;
            if (r2.A02 == 0) {
                this.A02 = f5;
            }
            i8--;
            i7--;
        }
        float f6 = r13.A00 + r13.A01 + f;
        int i9 = r13.A02 + 1;
        int i10 = i + 1;
        while (i10 < size2) {
            AnonymousClass35 r82 = this.A0t.get(i10);
            while (i9 < r82.A02) {
                f6 += this.A01.A04(i9) + f;
                i9++;
            }
            int i11 = r82.A02;
            if (A0v[2].length() != 14) {
                String[] strArr2 = A0v;
                strArr2[3] = "LKMrFShf3NXE5XfaxsCGHUW3hns0S8Wh";
                strArr2[6] = "xptjAJKkekqR5TDnJjimQZvUd22mQJJ9";
                if (i11 != pos - 1) {
                    r82.A00 = f6;
                    f6 += r82.A01 + f;
                    i10++;
                    i9++;
                }
            } else if (i11 != pos - 1) {
                r82.A00 = f6;
                f6 += r82.A01 + f;
                i10++;
                i9++;
            }
            this.A07 = (r82.A01 + f6) - 1.0f;
            r82.A00 = f6;
            f6 += r82.A01 + f;
            i10++;
            i9++;
        }
        this.A0n = false;
    }

    private void A0S(boolean z) {
        boolean z2;
        if (this.A0P == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            setScrollingCacheEnabled(false);
            if (true ^ this.A0X.isFinished()) {
                this.A0X.abortAnimation();
                if (A0v[1].length() != 12) {
                    A0v[1] = "La7";
                    int scrollX = getScrollX();
                    int scrollY = getScrollY();
                    int oldX = this.A0X.getCurrX();
                    int x = this.A0X.getCurrY();
                    if (!(scrollX == oldX && scrollY == x)) {
                        scrollTo(oldX, x);
                        if (oldX != scrollX) {
                            A0a(oldX);
                        }
                    }
                } else {
                    throw new RuntimeException();
                }
            }
        }
        this.A0o = false;
        for (int i = 0; i < this.A0t.size(); i++) {
            AnonymousClass35 ii = this.A0t.get(i);
            if (ii.A04) {
                z2 = true;
                ii.A04 = false;
            }
        }
        if (!z2) {
            return;
        }
        if (z) {
            AnonymousClass2z.A0C(this, this.A0s);
        } else {
            this.A0s.run();
        }
    }

    private void A0T(boolean z) {
        int i;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (z) {
                i = this.A0N;
            } else {
                i = 0;
            }
            getChildAt(i2).setLayerType(i, null);
        }
    }

    private void A0U(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean A0V() {
        this.A08 = -1;
        A09();
        this.A0V.onRelease();
        this.A0W.onRelease();
        if (this.A0V.isFinished() || this.A0W.isFinished()) {
            return true;
        }
        return false;
    }

    private final boolean A0W() {
        int i = this.A00;
        if (i <= 0) {
            return false;
        }
        A0M(i - 1, true);
        return true;
    }

    private final boolean A0X() {
        AbstractC01842k r0 = this.A01;
        if (r0 != null && this.A00 < r0.A05() - 1) {
            A0M(this.A00 + 1, true);
            return true;
        } else if (A0v[2].length() != 14) {
            String[] strArr = A0v;
            strArr[7] = "AXA5EDUbYu85ntxkUdYhY3hIIlQIUQar";
            strArr[0] = "7HhQN1X94o8BEMOAnE9vO9t08zapWTmy";
            return false;
        } else {
            throw new RuntimeException();
        }
    }

    /* JADX INFO: Multiple debug info for r4v2 float: [D('firstItem' com.facebook.ads.redexgen.X.35), D('over' float)] */
    private boolean A0Y(float deltaX) {
        boolean z = false;
        this.A05 = deltaX;
        float scrollX = ((float) getScrollX()) + (this.A05 - deltaX);
        int clientWidth = getClientWidth();
        float over = ((float) clientWidth) * this.A02;
        float f = ((float) clientWidth) * this.A07;
        boolean z2 = true;
        boolean z3 = true;
        AnonymousClass35 r5 = this.A0t.get(0);
        ArrayList<AnonymousClass35> arrayList = this.A0t;
        AnonymousClass35 r8 = arrayList.get(arrayList.size() - 1);
        if (r5.A02 != 0) {
            z2 = false;
            float f2 = r5.A00;
            if (A0v[1].length() != 12) {
                A0v[1] = "a";
                over = f2 * ((float) clientWidth);
            } else {
                throw new RuntimeException();
            }
        }
        if (r8.A02 != this.A01.A05() - 1) {
            z3 = false;
            f = r8.A00 * ((float) clientWidth);
        }
        if (scrollX < over) {
            if (z2) {
                this.A0V.onPull(Math.abs(over - scrollX) / ((float) clientWidth));
                z = true;
            }
            scrollX = over;
        } else if (scrollX > f) {
            if (z3) {
                EdgeEffect edgeEffect = this.A0W;
                float abs = Math.abs(scrollX - f);
                float f3 = (float) clientWidth;
                String[] strArr = A0v;
                if (strArr[4].length() != strArr[5].length()) {
                    edgeEffect.onPull(abs / f3);
                    z = true;
                } else {
                    A0v[1] = "TwKB2lBmR";
                    edgeEffect.onPull(abs / f3);
                    z = true;
                }
            }
            scrollX = f;
        }
        this.A05 += scrollX - ((float) ((int) scrollX));
        scrollTo((int) scrollX, getScrollY());
        A0a((int) scrollX);
        return z;
    }

    private final boolean A0Z(float f, float f2) {
        if (f >= ((float) this.A0I) || f2 <= 0.0f) {
            if (f > ((float) (getWidth() - this.A0I))) {
                int i = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
                if (A0v[2].length() != 14) {
                    String[] strArr = A0v;
                    strArr[3] = "LoLbwLodEQ0RZhoADzk4YxqyeMxGbPNe";
                    strArr[6] = "uXFtlpuRRgamX4n9Zkql1HjWorEkSQ7b";
                    if (i < 0) {
                        return true;
                    }
                } else {
                    throw new RuntimeException();
                }
            }
            return false;
        }
        return true;
    }

    private boolean A0a(int i) {
        int size = this.A0t.size();
        String A082 = A08(381, 53, 117);
        if (size != 0) {
            AnonymousClass35 A032 = A03();
            int clientWidth = getClientWidth();
            int i2 = this.A0M;
            int i3 = A032.A02;
            float f = ((((float) i) / ((float) clientWidth)) - A032.A00) / (A032.A01 + (((float) i2) / ((float) clientWidth)));
            this.A0g = false;
            A0J(i3, f, (int) (((float) (clientWidth + i2)) * f));
            if (this.A0g) {
                return true;
            }
            throw new IllegalStateException(A082);
        } else if (this.A0i) {
            return false;
        } else {
            this.A0g = false;
            A0J(0, 0.0f, 0);
            String[] strArr = A0v;
            if (strArr[4].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A0v[2] = "c3ramapljB1reDSufYjA";
            if (this.A0g) {
                return false;
            }
            throw new IllegalStateException(A082);
        }
    }

    /* JADX INFO: Multiple debug info for r3v0 android.view.View: [D('nextFocused' android.view.View), D('sb' java.lang.StringBuilder)] */
    /* JADX INFO: Multiple debug info for r4v0 java.lang.StringBuilder: [D('parent' android.view.ViewParent), D('nextLeft' int)] */
    private final boolean A0b(int i) {
        View nextFocused = findFocus();
        if (nextFocused == this) {
            nextFocused = null;
        } else if (nextFocused != null) {
            boolean z = false;
            ViewParent parent = nextFocused.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    break;
                } else if (parent == this) {
                    z = true;
                    break;
                } else {
                    parent = parent.getParent();
                }
            }
            if (!z) {
                StringBuilder sb = new StringBuilder();
                sb.append(nextFocused.getClass().getSimpleName());
                for (ViewParent parent2 = nextFocused.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb.append(A08(0, 4, 21));
                    sb.append(parent2.getClass().getSimpleName());
                }
                Log.e(A08(HttpStatus.SC_MULTIPLE_CHOICES, 9, 47), A08(309, 72, 80) + sb.toString());
                nextFocused = null;
            }
        }
        boolean z2 = false;
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, nextFocused, i);
        if (findNextFocus == null || findNextFocus == nextFocused) {
            if (i == 17 || i == 1) {
                z2 = A0W();
            } else if (i == 66 || i == 2) {
                z2 = A0X();
            }
        } else if (i == 17) {
            z2 = (nextFocused == null || A02(this.A0q, findNextFocus).left < A02(this.A0q, nextFocused).left) ? findNextFocus.requestFocus() : A0W();
        } else if (i == 66) {
            z2 = (nextFocused == null || A02(this.A0q, findNextFocus).left > A02(this.A0q, nextFocused).left) ? findNextFocus.requestFocus() : A0X();
        }
        if (z2) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return z2;
    }

    private final boolean A0c(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 21) {
            if (keyCode != 22) {
                if (keyCode != 61) {
                    return false;
                }
                if (keyEvent.hasNoModifiers()) {
                    return A0b(2);
                }
                boolean hasModifiers = keyEvent.hasModifiers(1);
                String[] strArr = A0v;
                if (strArr[4].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                A0v[1] = "lC1XoLB2bpdljamdt6Vm";
                if (hasModifiers) {
                    return A0b(1);
                }
                return false;
            } else if (keyEvent.hasModifiers(2)) {
                return A0X();
            } else {
                return A0b(66);
            }
        } else if (keyEvent.hasModifiers(2)) {
            return A0W();
        } else {
            return A0b(17);
        }
    }

    public static boolean A0d(@NonNull View view) {
        return view.getClass().getAnnotation(ViewPager$DecorView.class) != null;
    }

    private final boolean A0e(View view, boolean z, int scrollX, int scrollY, int count) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX2 = view.getScrollX();
            int scrollY2 = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (scrollY + scrollX2 >= childAt.getLeft() && scrollY + scrollX2 < childAt.getRight() && count + scrollY2 >= childAt.getTop() && count + scrollY2 < childAt.getBottom()) {
                    int left = (scrollY + scrollX2) - childAt.getLeft();
                    int i = count + scrollY2;
                    if (A0v[1].length() != 12) {
                        String[] strArr = A0v;
                        strArr[4] = "";
                        strArr[5] = "";
                        if (A0e(childAt, true, scrollX, left, i - childAt.getTop())) {
                            return true;
                        }
                    } else {
                        throw new RuntimeException();
                    }
                }
            }
        }
        if (!z || !view.canScrollHorizontally(-scrollX)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Multiple debug info for r0v13 android.view.View: [D('child' android.view.View), D('childCount' int)] */
    public final void A0f() {
        boolean z;
        int newCurrItem = this.A01.A05();
        this.A0G = newCurrItem;
        if (this.A0t.size() >= (this.A0L * 2) + 1 || this.A0t.size() >= newCurrItem) {
            z = false;
        } else {
            z = true;
        }
        int i = this.A00;
        boolean z2 = false;
        int i2 = 0;
        while (i2 < this.A0t.size()) {
            AnonymousClass35 r8 = this.A0t.get(i2);
            int A062 = this.A01.A06(r8.A03);
            if (A062 != -1) {
                if (A062 == -2) {
                    this.A0t.remove(i2);
                    i2--;
                    if (!z2) {
                        z2 = true;
                    }
                    this.A01.A0B(this, r8.A02, r8.A03);
                    z = true;
                    if (this.A00 == r8.A02) {
                        i = Math.max(0, Math.min(this.A00, newCurrItem - 1));
                        z = true;
                    }
                } else if (r8.A02 != A062) {
                    if (r8.A02 == this.A00) {
                        i = A062;
                    }
                    r8.A02 = A062;
                    z = true;
                }
            }
            i2++;
        }
        Collections.sort(this.A0t, A0z);
        if (z) {
            int newCurrItem2 = getChildCount();
            for (int i3 = 0; i3 < newCurrItem2; i3++) {
                AnonymousClass36 r1 = (AnonymousClass36) getChildAt(i3).getLayoutParams();
                if (!r1.A05) {
                    r1.A00 = 0.0f;
                }
            }
            A0O(i, false, true);
            if (A0v[2].length() != 14) {
                A0v[2] = "iBz2AIJ6C";
                requestLayout();
                return;
            }
            throw new RuntimeException();
        }
    }

    public final void A0g() {
        A0H(this.A00);
    }

    @Override // android.view.View, android.view.ViewGroup
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        AnonymousClass35 A072;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (A072 = A07(childAt)) != null && A072.A02 == this.A00) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if ((i2 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) {
            arrayList.add(this);
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    public final void addTouchables(ArrayList<View> arrayList) {
        AnonymousClass35 A072;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (A072 = A07(childAt)) != null && A072.A02 == this.A00) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        AnonymousClass36 r2 = (AnonymousClass36) layoutParams;
        r2.A05 |= A0d(view);
        if (!this.A0j) {
            super.addView(view, i, layoutParams);
        } else if (!r2.A05) {
            r2.A03 = true;
            addViewInLayout(view, i, layoutParams);
        } else {
            throw new IllegalStateException(A08(86, 41, 16));
        }
    }

    public final boolean canScrollHorizontally(int i) {
        if (this.A01 == null) {
            return false;
        }
        int scrollX = getClientWidth();
        int scrollX2 = getScrollX();
        if (i < 0) {
            if (scrollX2 > ((int) (((float) scrollX) * this.A02))) {
                return true;
            }
            return false;
        } else if (i <= 0 || scrollX2 >= ((int) (((float) scrollX) * this.A07))) {
            return false;
        } else {
            return true;
        }
    }

    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof AnonymousClass36) && super.checkLayoutParams(layoutParams);
    }

    public final void computeScroll() {
        this.A0l = true;
        if (this.A0X.isFinished() || !this.A0X.computeScrollOffset()) {
            A0S(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.A0X.getCurrX();
        int oldY = this.A0X.getCurrY();
        if (!(scrollX == currX && scrollY == oldY)) {
            scrollTo(currX, oldY);
            if (!A0a(currX)) {
                this.A0X.abortAnimation();
                scrollTo(0, oldY);
            }
        }
        AnonymousClass2z.A07(this);
    }

    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || A0c(keyEvent);
    }

    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        AnonymousClass35 ii;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (ii = A07(childAt)) != null) {
                int i2 = ii.A02;
                String[] strArr = A0v;
                if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0v;
                strArr2[4] = "";
                strArr2[5] = "";
                if (i2 == this.A00 && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (r3.A05() > 1) goto L_0x0038;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r3 == false) goto L_0x0054;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x00e1, code lost:
        if (r3 == false) goto L_0x0054;
     */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x00d1  */
    /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void draw(android.graphics.Canvas r8) {
        /*
        // Method dump skipped, instructions count: 240
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass3D.draw(android.graphics.Canvas):void");
    }

    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.A0S;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new AnonymousClass36();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new AnonymousClass36(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC01842k getAdapter() {
        return this.A01;
    }

    public final int getChildDrawingOrder(int i, int i2) {
        int i3;
        if (this.A0F == 2) {
            i3 = (i - 1) - i2;
        } else {
            i3 = i2;
        }
        return ((AnonymousClass36) this.A0d.get(i3).getLayoutParams()).A01;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public int getCurrentItem() {
        return this.A00;
    }

    public int getOffscreenPageLimit() {
        return this.A0L;
    }

    public int getPageMargin() {
        return this.A0M;
    }

    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A0i = true;
    }

    public final void onDetachedFromWindow() {
        removeCallbacks(this.A0s);
        Scroller scroller = this.A0X;
        if (scroller != null && !scroller.isFinished()) {
            this.A0X.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Multiple debug info for r8v1 float: [D('widthFactor' float), D('drawAt' float)] */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0083, code lost:
        if (r5 != r4.A02) goto L_0x00fc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0085, code lost:
        r1 = (r4.A00 + r4.A01) * ((float) r9);
        r3 = (r4.A00 + r4.A01) + r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0099, code lost:
        if ((((float) r17.A0M) + r1) <= ((float) r10)) goto L_0x00d0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x009b, code lost:
        r17.A0S.setBounds(java.lang.Math.round(r1), r17.A0Q, java.lang.Math.round(((float) r17.A0M) + r1), r17.A09);
        r13 = r17.A0S;
        r14 = com.facebook.ads.redexgen.X.AnonymousClass3D.A0v;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x00c4, code lost:
        if (r14[7].charAt(10) == r14[0].charAt(10)) goto L_0x00ec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00c6, code lost:
        com.facebook.ads.redexgen.X.AnonymousClass3D.A0v[1] = "";
        r13.draw(r18);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00d0, code lost:
        r14 = r10 + r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00dd, code lost:
        if (com.facebook.ads.redexgen.X.AnonymousClass3D.A0v[1].length() == 12) goto L_0x0071;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00df, code lost:
        com.facebook.ads.redexgen.X.AnonymousClass3D.A0v[1] = "DrXdt";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00e9, code lost:
        if (r1 <= ((float) r14)) goto L_0x0109;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00ec, code lost:
        r14 = com.facebook.ads.redexgen.X.AnonymousClass3D.A0v;
        r14[4] = "";
        r14[5] = "";
        r13.draw(r18);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00fc, code lost:
        r2 = r17.A01.A04(r5);
        r1 = (r3 + r2) * ((float) r9);
        r3 = r3 + (r2 + r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0109, code lost:
        r5 = r5 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onDraw(android.graphics.Canvas r18) {
        /*
        // Method dump skipped, instructions count: 269
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass3D.onDraw(android.graphics.Canvas):void");
    }

    /* JADX INFO: Multiple debug info for r1v9 int: [D('xDiff' float), D('pointerIndex' int)] */
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float f;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            A0V();
            String[] strArr = A0v;
            if (strArr[4].length() == strArr[5].length()) {
                A0v[2] = "iW5W";
                return false;
            }
        } else {
            if (action != 0) {
                if (this.A0k) {
                    return true;
                }
                if (this.A0m) {
                    return false;
                }
            }
            if (action == 0) {
                float yDiff = motionEvent.getX();
                this.A03 = yDiff;
                this.A05 = yDiff;
                float y = motionEvent.getY();
                this.A04 = y;
                this.A06 = y;
                this.A08 = motionEvent.getPointerId(0);
                this.A0m = false;
                this.A0l = true;
                this.A0X.computeScrollOffset();
                if (this.A0P != 2 || Math.abs(this.A0X.getFinalX() - this.A0X.getCurrX()) <= this.A0C) {
                    A0S(false);
                    this.A0k = false;
                } else {
                    this.A0X.abortAnimation();
                    this.A0o = false;
                    A0g();
                    this.A0k = true;
                    A0U(true);
                    setScrollState(1);
                }
            } else if (action == 2) {
                int i = this.A08;
                if (i != -1) {
                    int pointerIndex = motionEvent.findPointerIndex(i);
                    float x = motionEvent.getX(pointerIndex);
                    float f2 = x - this.A05;
                    float abs = Math.abs(f2);
                    float y2 = motionEvent.getY(pointerIndex);
                    float abs2 = Math.abs(y2 - this.A04);
                    if (f2 == 0.0f || A0Z(this.A05, f2) || !A0e(this, false, (int) f2, (int) x, (int) y2)) {
                        float f3 = (float) this.A0R;
                        if (A0v[1].length() != 12) {
                            String[] strArr2 = A0v;
                            strArr2[7] = "NnThZj9Wv9885vPNkfCF8DoAZte0LwUX";
                            strArr2[0] = "g2aolHvSBW8By3vUeqDyYWaFAgdqNGTo";
                            if (abs > f3 && 0.5f * abs > abs2) {
                                this.A0k = true;
                                A0U(true);
                                setScrollState(1);
                                if (f2 > 0.0f) {
                                    float f4 = this.A03;
                                    int i2 = this.A0R;
                                    String[] strArr3 = A0v;
                                    if (strArr3[7].charAt(10) != strArr3[0].charAt(10)) {
                                        f = f4 + ((float) i2);
                                    } else {
                                        String[] strArr4 = A0v;
                                        strArr4[7] = "WpQimEPBWZ8vG05HKhTxshBMY3NNEur0";
                                        strArr4[0] = "BEtp4ufX6D8x3OZlDxdpMoFh1oKQqP0t";
                                        f = f4 + ((float) i2);
                                    }
                                } else {
                                    f = this.A03 - ((float) this.A0R);
                                }
                                this.A05 = f;
                                this.A06 = y2;
                                setScrollingCacheEnabled(true);
                            } else if (abs2 > ((float) this.A0R)) {
                                this.A0m = true;
                            }
                            if (this.A0k && A0Y(x)) {
                                AnonymousClass2z.A07(this);
                            }
                        }
                    } else {
                        this.A05 = x;
                        this.A06 = y2;
                        this.A0m = true;
                        return false;
                    }
                }
            } else if (action == 6) {
                A0Q(motionEvent);
            }
            if (this.A0U == null) {
                this.A0U = VelocityTracker.obtain();
            }
            this.A0U.addMovement(motionEvent);
            return this.A0k;
        }
        throw new RuntimeException();
    }

    /* JADX INFO: Multiple debug info for r11v1 'i'  int: [D('i' int), D('childWidth' int)] */
    /* JADX INFO: Multiple debug info for r10v1 int: [D('hgrav' int), D('lp' com.facebook.ads.redexgen.X.36)] */
    /* JADX INFO: Multiple debug info for r2v4 com.facebook.ads.redexgen.X.36: [D('count' int), D('lp' com.facebook.ads.redexgen.X.36)] */
    /* JADX INFO: Multiple debug info for r0v24 int: [D('paddingLeft' int), D('width' int)] */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0085, code lost:
        if (r3 != 48) goto L_0x0087;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a4, code lost:
        if (r3 != 80) goto L_0x00a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00c7, code lost:
        if (r3 != 80) goto L_0x00a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00ca, code lost:
        r2 = (r8 - r16) - r4.getMeasuredHeight();
        r16 = r16 + r4.getMeasuredHeight();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00e4, code lost:
        if (r3 != 48) goto L_0x0087;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00e7, code lost:
        r2 = r12;
        r12 = r12 + r4.getMeasuredHeight();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
        // Method dump skipped, instructions count: 450
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass3D.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX INFO: Multiple debug info for r2v4 com.facebook.ads.redexgen.X.36: [D('childHeightSize' int), D('widthSize' int)] */
    public void onMeasure(int i, int i2) {
        AnonymousClass36 r11;
        boolean z;
        boolean z2;
        int i3;
        int i4;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.A0I = Math.min(measuredWidth / 10, this.A0E);
        int maxGutterSize = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredWidth2 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 < childCount) {
                View childAt = getChildAt(i5);
                if (childAt.getVisibility() != 8) {
                    AnonymousClass36 r2 = (AnonymousClass36) childAt.getLayoutParams();
                    if (A0v[1].length() == 12) {
                        break;
                    }
                    String[] strArr = A0v;
                    strArr[4] = "";
                    strArr[5] = "";
                    if (r2 != null && r2.A05) {
                        int i6 = r2.A04 & 7;
                        int i7 = r2.A04 & 112;
                        int i8 = RecyclerView.UNDEFINED_DURATION;
                        int i9 = RecyclerView.UNDEFINED_DURATION;
                        if (i7 == 48 || i7 == 80) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (i6 == 3 || i6 == 5) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z) {
                            i8 = 1073741824;
                        } else if (z2) {
                            i9 = 1073741824;
                        }
                        if (r2.width != -2) {
                            i8 = 1073741824;
                            if (r2.width != -1) {
                                i3 = r2.width;
                            } else {
                                i3 = maxGutterSize;
                            }
                        } else {
                            i3 = maxGutterSize;
                        }
                        if (r2.height != -2) {
                            i9 = 1073741824;
                            if (r2.height != -1) {
                                i4 = r2.height;
                                if (A0v[1].length() != 12) {
                                    A0v[1] = "VKsSzAx6pk9J5wmYrW5ACp";
                                }
                            } else {
                                i4 = measuredWidth2;
                            }
                        } else {
                            i4 = measuredWidth2;
                        }
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i3, i8), View.MeasureSpec.makeMeasureSpec(i4, i9));
                        if (z) {
                            measuredWidth2 -= childAt.getMeasuredHeight();
                        } else if (z2) {
                            maxGutterSize -= childAt.getMeasuredWidth();
                        }
                    }
                }
                i5++;
            } else {
                this.A0B = View.MeasureSpec.makeMeasureSpec(maxGutterSize, 1073741824);
                this.A0A = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                this.A0j = true;
                A0g();
                this.A0j = false;
                int childCount2 = getChildCount();
                for (int i10 = 0; i10 < childCount2; i10++) {
                    View childAt2 = getChildAt(i10);
                    if (childAt2.getVisibility() != 8 && ((r11 = (AnonymousClass36) childAt2.getLayoutParams()) == null || !r11.A05)) {
                        float f = (float) maxGutterSize;
                        String[] strArr2 = A0v;
                        if (strArr2[4].length() == strArr2[5].length()) {
                            A0v[1] = "11cm9STM7FlxGR3";
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f * r11.A00), 1073741824), this.A0A);
                        }
                    }
                }
                return;
            }
        }
        throw new RuntimeException();
    }

    public final boolean onRequestFocusInDescendants(int index, Rect rect) {
        int i;
        int i2;
        AnonymousClass35 A072;
        int end = getChildCount();
        if ((index & 2) != 0) {
            i2 = 0;
            i = 1;
        } else {
            i2 = end - 1;
            i = -1;
            end = -1;
        }
        while (i2 != end) {
            View childAt = getChildAt(i2);
            if (A0v[2].length() != 14) {
                String[] strArr = A0v;
                strArr[3] = "wvs0VrXDMEHK1ZrgMliCmQkmYIqFRPYZ";
                strArr[6] = "yeuyy9yC0QSIfk9tyj8D1No5khczL5F7";
                if (childAt.getVisibility() == 0 && (A072 = A07(childAt)) != null && A072.A02 == this.A00 && childAt.requestFocus(index, rect)) {
                    return true;
                }
                i2 += i;
            } else {
                throw new RuntimeException();
            }
        }
        return false;
    }

    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof WrappedParcelable)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            Context context = getContext();
            String[] strArr = A0v;
            if (strArr[3].charAt(15) != strArr[6].charAt(15)) {
                String[] strArr2 = A0v;
                strArr2[7] = "Ly8LvMv3iU8o2fiJAVqvd6K7Aqz3gZKY";
                strArr2[0] = "HcNmsPXina8Ul250FP3kUGj1pgK53N1r";
                classLoader = context.getClassLoader();
            } else {
                throw new RuntimeException();
            }
        }
        Parcelable unwrap = ((WrappedParcelable) parcelable).unwrap(classLoader);
        if (!(unwrap instanceof ViewPager$SavedState)) {
            super.onRestoreInstanceState(unwrap);
            return;
        }
        ViewPager$SavedState viewPager$SavedState = (ViewPager$SavedState) unwrap;
        super.onRestoreInstanceState(viewPager$SavedState.A02());
        if (this.A01 != null) {
            A0O(viewPager$SavedState.A00, false, true);
            return;
        }
        this.A0O = viewPager$SavedState.A00;
        this.A0T = viewPager$SavedState.A01;
        this.A0c = viewPager$SavedState.A02;
    }

    public final Parcelable onSaveInstanceState() {
        ViewPager$SavedState viewPager$SavedState = new ViewPager$SavedState(super.onSaveInstanceState());
        viewPager$SavedState.A00 = this.A00;
        AbstractC01842k r0 = this.A01;
        if (r0 != null) {
            viewPager$SavedState.A01 = r0.A07();
        }
        return new WrappedParcelable(viewPager$SavedState);
    }

    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.A0M;
            A0L(i, i3, i5, i5);
        }
    }

    /* JADX INFO: Multiple debug info for r0v23 int: [D('pageOffset' float), D('activePointerIndex' int)] */
    /* JADX INFO: Multiple debug info for r0v48 android.view.ViewParent: [D('yDiff' float), D('parent' android.view.ViewParent)] */
    /* JADX INFO: Multiple debug info for r0v55 float: [D('index' int), D('x' float)] */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC01842k r0;
        float f;
        if (this.A0h) {
            return true;
        }
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (r0 = this.A01) == null || r0.A05() == 0) {
            return false;
        }
        if (this.A0U == null) {
            this.A0U = VelocityTracker.obtain();
        }
        this.A0U.addMovement(motionEvent);
        boolean z = false;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.A0X.abortAnimation();
            this.A0o = false;
            A0g();
            float x = motionEvent.getX();
            this.A03 = x;
            this.A05 = x;
            float y = motionEvent.getY();
            this.A04 = y;
            this.A06 = y;
            this.A08 = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.A0k) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.A08);
                    if (findPointerIndex == -1) {
                        z = A0V();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.A05);
                        float xDiff = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(xDiff - this.A06);
                        if (abs > ((float) this.A0R) && abs > abs2) {
                            this.A0k = true;
                            A0U(true);
                            float f2 = this.A03;
                            if (x2 - f2 > 0.0f) {
                                f = f2 + ((float) this.A0R);
                            } else {
                                f = f2 - ((float) this.A0R);
                            }
                            this.A05 = f;
                            this.A06 = xDiff;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.A0k) {
                    z = false | A0Y(motionEvent.getX(motionEvent.findPointerIndex(this.A08)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.A05 = motionEvent.getX(actionIndex);
                    this.A08 = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    A0Q(motionEvent);
                    this.A05 = motionEvent.getX(motionEvent.findPointerIndex(this.A08));
                }
            } else if (this.A0k) {
                A0N(this.A00, true, 0, false);
                z = A0V();
            }
        } else if (this.A0k) {
            VelocityTracker velocityTracker = this.A0U;
            velocityTracker.computeCurrentVelocity(AdError.NETWORK_ERROR_CODE, (float) this.A0J);
            int xVelocity = (int) velocityTracker.getXVelocity(this.A08);
            this.A0o = true;
            int clientWidth = getClientWidth();
            int width = getScrollX();
            AnonymousClass35 A032 = A03();
            A0P(A01(A032.A02, ((((float) width) / ((float) clientWidth)) - A032.A00) / (A032.A01 + (((float) this.A0M) / ((float) clientWidth))), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.A08)) - this.A03)), true, true, xVelocity);
            z = A0V();
        }
        if (z) {
            AnonymousClass2z.A07(this);
        }
        return true;
    }

    public final void removeView(View view) {
        if (this.A0j) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* JADX INFO: Multiple debug info for r6v0 'this'  com.facebook.ads.redexgen.X.3D: [D('oldAdapter' com.facebook.ads.redexgen.X.2k), D('i' int)] */
    public void setAdapter(AbstractC01842k r7) {
        AbstractC01842k r0 = this.A01;
        if (r0 != null) {
            r0.A0A(null);
            for (int i = 0; i < this.A0t.size(); i++) {
                AnonymousClass35 r02 = this.A0t.get(i);
                this.A01.A0B(this, r02.A02, r02.A03);
            }
            this.A0t.clear();
            A0A();
            this.A00 = 0;
            scrollTo(0, 0);
        }
        this.A01 = r7;
        this.A0G = 0;
        if (this.A01 != null) {
            if (this.A0b == null) {
                this.A0b = new AnonymousClass3A(this);
            }
            this.A01.A0A(this.A0b);
            this.A0o = false;
            boolean z = this.A0i;
            this.A0i = true;
            this.A0G = this.A01.A05();
            if (this.A0O >= 0) {
                A0O(this.A0O, false, true);
                this.A0O = -1;
                this.A0T = null;
                this.A0c = null;
            } else if (!z) {
                A0g();
            } else {
                requestLayout();
            }
        }
        List<ViewPager.OnAdapterChangeListener> list = this.A0e;
        if (!(list == null || list.isEmpty() || 0 >= this.A0e.size())) {
            this.A0e.get(0);
            throw null;
        }
    }

    public void setCurrentItem(int i) {
        this.A0o = false;
        A0O(i, !this.A0i, false);
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w(A08(HttpStatus.SC_MULTIPLE_CHOICES, 9, 47), A08(127, 31, 60) + i + A08(51, 26, 90) + 1);
            i = 1;
        }
        if (i != this.A0L) {
            this.A0L = i;
            A0g();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AnonymousClass38 r1) {
        this.A0Z = r1;
    }

    public void setPageMargin(int width) {
        int i = this.A0M;
        this.A0M = width;
        int width2 = getWidth();
        A0L(width2, width2, width, i);
        requestLayout();
    }

    public void setPageMarginDrawable(@DrawableRes int i) {
        setPageMarginDrawable(AnonymousClass2G.A00(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        boolean z;
        this.A0S = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        if (drawable == null) {
            z = true;
        } else {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setScrollState(int i) {
        boolean z;
        if (this.A0P != i) {
            this.A0P = i;
            if (this.A0a != null) {
                if (i != 0) {
                    z = true;
                } else {
                    z = false;
                }
                A0T(z);
            }
            A0G(i);
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.A0p != z) {
            this.A0p = z;
        }
    }

    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.A0S;
    }
}
