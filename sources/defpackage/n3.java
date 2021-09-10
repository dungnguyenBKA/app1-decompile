package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.ads.AdRequest;
import com.vungle.warren.error.VungleException;
import defpackage.p3;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: n3  reason: default package */
public class n3 {
    private static int d;
    private final AccessibilityNodeInfo a;
    public int b = -1;
    private int c = -1;

    /* renamed from: n3$a */
    public static class a {
        public static final a e = new a(1, null);
        public static final a f = new a(2, null);
        public static final a g = new a(16, null);
        public static final a h = new a(4096, null);
        public static final a i = new a(8192, null);
        public static final a j = new a(262144, null);
        public static final a k = new a(524288, null);
        public static final a l = new a(1048576, null);
        public static final a m;
        public static final a n;
        final Object a;
        private final int b;
        private final Class<? extends p3.a> c;
        protected final p3 d;

        static {
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(4, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(8, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(32, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(64, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(128, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(256, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(AdRequest.MAX_CONTENT_URL_LENGTH, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(1024, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(2048, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(16384, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(32768, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(65536, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(131072, null);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                new AccessibilityNodeInfo.AccessibilityAction(2097152, null);
            }
            int i2 = Build.VERSION.SDK_INT;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908342, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction2 = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction2 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908343, null);
            }
            m = new a(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction3 = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction3 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908345, null);
            }
            n = new a(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction4 = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction4 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908347, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction5 = i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction5 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908358, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction6 = i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction6 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908359, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction7 = i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction7 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908360, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction8 = i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction8 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908361, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction9 = i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction9 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908348, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction10 = i2 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction10 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908349, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction11 = i2 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction11 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908354, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction12 = i2 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction12 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908356, null);
            }
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction13 = i2 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null;
            if (Build.VERSION.SDK_INT >= 21 && accessibilityAction13 == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908357, null);
            }
        }

        public a(int i2, CharSequence charSequence) {
            this(null, i2, null, null, null);
        }

        public a a(CharSequence charSequence, p3 p3Var) {
            return new a(null, this.b, charSequence, p3Var, this.c);
        }

        public int b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.a).getId();
            }
            return 0;
        }

        public boolean c(View view, Bundle bundle) {
            p3.a aVar;
            Exception e2;
            String str;
            if (this.d == null) {
                return false;
            }
            p3.a aVar2 = null;
            Class<? extends p3.a> cls = this.c;
            if (cls != null) {
                try {
                    aVar = (p3.a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    try {
                        Objects.requireNonNull(aVar);
                    } catch (Exception e3) {
                        e2 = e3;
                    }
                } catch (Exception e4) {
                    aVar = null;
                    e2 = e4;
                    Class<? extends p3.a> cls2 = this.c;
                    if (cls2 == null) {
                        str = "null";
                    } else {
                        str = cls2.getName();
                    }
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + str, e2);
                    aVar2 = aVar;
                    return this.d.a(view, aVar2);
                }
                aVar2 = aVar;
            }
            return this.d.a(view, aVar2);
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.a;
            if (obj2 == null) {
                if (aVar.a != null) {
                    return false;
                }
                return true;
            } else if (!obj2.equals(aVar.a)) {
                return false;
            } else {
                return true;
            }
        }

        public int hashCode() {
            Object obj = this.a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        a(Object obj, int i2, CharSequence charSequence, p3 p3Var, Class<? extends p3.a> cls) {
            this.b = i2;
            this.d = p3Var;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.a = obj;
            } else {
                this.a = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
            }
            this.c = cls;
        }
    }

    /* renamed from: n3$b */
    public static class b {
        final Object a;

        b(Object obj) {
            this.a = obj;
        }

        public static b a(int i, int i2, boolean z) {
            return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z));
        }

        public static b b(int i, int i2, boolean z, int i3) {
            if (Build.VERSION.SDK_INT >= 21) {
                return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3));
            }
            return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z));
        }
    }

    /* renamed from: n3$c */
    public static class c {
        final Object a;

        c(Object obj) {
            this.a = obj;
        }

        public static c a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            if (Build.VERSION.SDK_INT >= 21) {
                return new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
            }
            return new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z));
        }
    }

    private n3(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.a = accessibilityNodeInfo;
    }

    public static n3 E() {
        return new n3(AccessibilityNodeInfo.obtain());
    }

    public static n3 F(View view) {
        return new n3(AccessibilityNodeInfo.obtain(view));
    }

    public static n3 G(n3 n3Var) {
        return new n3(AccessibilityNodeInfo.obtain(n3Var.a));
    }

    private void L(int i, boolean z) {
        Bundle o = o();
        if (o != null) {
            int i2 = o.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ -1);
            if (!z) {
                i = 0;
            }
            o.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i | i2);
        }
    }

    private List<Integer> f(String str) {
        ArrayList<Integer> integerArrayList = this.a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    private static String g(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case VungleException.NO_SPACE_TO_INIT:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case AdRequest.MAX_CONTENT_URL_LENGTH:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case 16908354:
                return "ACTION_MOVE_WINDOW";
            default:
                switch (i) {
                    case 16908342:
                        return "ACTION_SHOW_ON_SCREEN";
                    case 16908343:
                        return "ACTION_SCROLL_TO_POSITION";
                    case 16908344:
                        return "ACTION_SCROLL_UP";
                    case 16908345:
                        return "ACTION_SCROLL_LEFT";
                    case 16908346:
                        return "ACTION_SCROLL_DOWN";
                    case 16908347:
                        return "ACTION_SCROLL_RIGHT";
                    case 16908348:
                        return "ACTION_CONTEXT_CLICK";
                    case 16908349:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i) {
                            case 16908356:
                                return "ACTION_SHOW_TOOLTIP";
                            case 16908357:
                                return "ACTION_HIDE_TOOLTIP";
                            case 16908358:
                                return "ACTION_PAGE_UP";
                            case 16908359:
                                return "ACTION_PAGE_DOWN";
                            case 16908360:
                                return "ACTION_PAGE_LEFT";
                            case 16908361:
                                return "ACTION_PAGE_RIGHT";
                            default:
                                return "ACTION_UNKNOWN";
                        }
                }
        }
    }

    public static ClickableSpan[] m(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public static n3 s0(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new n3(accessibilityNodeInfo);
    }

    public boolean A() {
        return this.a.isScrollable();
    }

    public boolean B() {
        return this.a.isSelected();
    }

    public boolean C() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.a.isShowingHintText();
        }
        Bundle o = o();
        if (o != null && (o.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & 4) == 4) {
            return true;
        }
        return false;
    }

    public boolean D() {
        return this.a.isVisibleToUser();
    }

    public boolean H(int i, Bundle bundle) {
        return this.a.performAction(i, bundle);
    }

    public void I() {
        this.a.recycle();
    }

    public boolean J(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.a.removeAction((AccessibilityNodeInfo.AccessibilityAction) aVar.a);
        }
        return false;
    }

    public void K(boolean z) {
        this.a.setAccessibilityFocused(z);
    }

    @Deprecated
    public void M(Rect rect) {
        this.a.setBoundsInParent(rect);
    }

    public void N(Rect rect) {
        this.a.setBoundsInScreen(rect);
    }

    public void O(boolean z) {
        this.a.setCanOpenPopup(z);
    }

    public void P(boolean z) {
        this.a.setCheckable(z);
    }

    public void Q(boolean z) {
        this.a.setChecked(z);
    }

    public void R(CharSequence charSequence) {
        this.a.setClassName(charSequence);
    }

    public void S(boolean z) {
        this.a.setClickable(z);
    }

    public void T(Object obj) {
        this.a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).a);
    }

    public void U(Object obj) {
        this.a.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) ((c) obj).a);
    }

    public void V(CharSequence charSequence) {
        this.a.setContentDescription(charSequence);
    }

    public void W(boolean z) {
        this.a.setContentInvalid(z);
    }

    public void X(boolean z) {
        this.a.setEnabled(z);
    }

    public void Y(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.a.setError(charSequence);
        }
    }

    public void Z(boolean z) {
        this.a.setFocusable(z);
    }

    public void a(int i) {
        this.a.addAction(i);
    }

    public void a0(boolean z) {
        this.a.setFocused(z);
    }

    public void b(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.a);
        }
    }

    public void b0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.a.setHeading(z);
        } else {
            L(2, z);
        }
    }

    public void c(View view) {
        this.a.addChild(view);
    }

    public void c0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.a.setHintText(charSequence);
        } else {
            this.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public void d(View view, int i) {
        this.a.addChild(view, i);
    }

    public void d0(boolean z) {
        this.a.setLongClickable(z);
    }

    public void e(CharSequence charSequence, View view) {
        int i;
        if (Build.VERSION.SDK_INT < 26) {
            this.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SparseArray sparseArray = (SparseArray) view.getTag(R.id.rd);
            if (sparseArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    if (((WeakReference) sparseArray.valueAt(i2)).get() == null) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                }
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    sparseArray.remove(((Integer) arrayList.get(i3)).intValue());
                }
            }
            ClickableSpan[] m = m(charSequence);
            if (m != null && m.length > 0) {
                o().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", R.id.q);
                SparseArray sparseArray2 = (SparseArray) view.getTag(R.id.rd);
                if (sparseArray2 == null) {
                    sparseArray2 = new SparseArray();
                    view.setTag(R.id.rd, sparseArray2);
                }
                for (int i4 = 0; i4 < m.length; i4++) {
                    ClickableSpan clickableSpan = m[i4];
                    int i5 = 0;
                    while (true) {
                        if (i5 >= sparseArray2.size()) {
                            i = d;
                            d = i + 1;
                            break;
                        } else if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray2.valueAt(i5)).get())) {
                            i = sparseArray2.keyAt(i5);
                            break;
                        } else {
                            i5++;
                        }
                    }
                    sparseArray2.put(i, new WeakReference(m[i4]));
                    ClickableSpan clickableSpan2 = m[i4];
                    Spanned spanned = (Spanned) charSequence;
                    f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                    f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                    f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                    f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
                }
            }
        }
    }

    public void e0(int i) {
        this.a.setMovementGranularities(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof n3)) {
            return false;
        }
        n3 n3Var = (n3) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.a;
        if (accessibilityNodeInfo == null) {
            if (n3Var.a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(n3Var.a)) {
            return false;
        }
        return this.c == n3Var.c && this.b == n3Var.b;
    }

    public void f0(CharSequence charSequence) {
        this.a.setPackageName(charSequence);
    }

    public void g0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.a.setPaneTitle(charSequence);
        } else {
            this.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public int h() {
        return this.a.getActions();
    }

    public void h0(View view) {
        this.b = -1;
        this.a.setParent(view);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    @Deprecated
    public void i(Rect rect) {
        this.a.getBoundsInParent(rect);
    }

    public void i0(View view, int i) {
        this.b = i;
        this.a.setParent(view, i);
    }

    public void j(Rect rect) {
        this.a.getBoundsInScreen(rect);
    }

    public void j0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.a.setScreenReaderFocusable(z);
        } else {
            L(1, z);
        }
    }

    public int k() {
        return this.a.getChildCount();
    }

    public void k0(boolean z) {
        this.a.setScrollable(z);
    }

    public CharSequence l() {
        return this.a.getClassName();
    }

    public void l0(boolean z) {
        this.a.setSelected(z);
    }

    public void m0(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.a.setShowingHintText(z);
        } else {
            L(4, z);
        }
    }

    public CharSequence n() {
        return this.a.getContentDescription();
    }

    public void n0(View view) {
        this.c = -1;
        this.a.setSource(view);
    }

    public Bundle o() {
        return this.a.getExtras();
    }

    public void o0(View view, int i) {
        this.c = i;
        this.a.setSource(view, i);
    }

    public int p() {
        return this.a.getMovementGranularities();
    }

    public void p0(CharSequence charSequence) {
        this.a.setText(charSequence);
    }

    public CharSequence q() {
        return this.a.getPackageName();
    }

    public void q0(boolean z) {
        this.a.setVisibleToUser(z);
    }

    public CharSequence r() {
        if (!(!f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty())) {
            return this.a.getText();
        }
        List<Integer> f = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> f2 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> f3 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> f4 = f("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.a.getText(), 0, this.a.getText().length()));
        for (int i = 0; i < f.size(); i++) {
            spannableString.setSpan(new m3(f4.get(i).intValue(), this, o().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), f.get(i).intValue(), f2.get(i).intValue(), f3.get(i).intValue());
        }
        return spannableString;
    }

    public AccessibilityNodeInfo r0() {
        return this.a;
    }

    public boolean s() {
        return this.a.isAccessibilityFocused();
    }

    public boolean t() {
        return this.a.isChecked();
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:35:0x0155 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.util.ArrayList] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String toString() {
        /*
        // Method dump skipped, instructions count: 455
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n3.toString():java.lang.String");
    }

    public boolean u() {
        return this.a.isClickable();
    }

    public boolean v() {
        return this.a.isEnabled();
    }

    public boolean w() {
        return this.a.isFocusable();
    }

    public boolean x() {
        return this.a.isFocused();
    }

    public boolean y() {
        return this.a.isLongClickable();
    }

    public boolean z() {
        return this.a.isPassword();
    }
}
