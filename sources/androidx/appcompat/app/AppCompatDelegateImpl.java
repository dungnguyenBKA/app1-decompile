package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.i0;
import androidx.appcompat.widget.m;
import androidx.appcompat.widget.p0;
import androidx.appcompat.widget.q;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import defpackage.k;
import defpackage.o;
import java.lang.Thread;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class AppCompatDelegateImpl extends i implements g.a, LayoutInflater.Factory2 {
    private static final Map<Class<?>, Integer> a0 = new x();
    private static final boolean b0;
    private static final int[] c0 = {16842836};
    private static boolean d0 = true;
    private static final boolean e0;
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    private boolean F;
    private PanelFeatureState[] G;
    private PanelFeatureState H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    boolean M;
    private int N;
    private int O;
    private boolean P;
    private boolean Q;
    private h R;
    private h S;
    boolean T;
    int U;
    private final Runnable V;
    private boolean W;
    private Rect X;
    private Rect Y;
    private AppCompatViewInflater Z;
    final Object e;
    final Context f;
    Window g;
    private f h;
    final h i;
    ActionBar j;
    MenuInflater k;
    private CharSequence l;
    private m m;
    private d n;
    private k o;
    defpackage.k p;
    ActionBarContextView q;
    PopupWindow r;
    Runnable s;
    h3 t;
    private boolean u;
    private ViewGroup v;
    private TextView w;
    private View x;
    private boolean y;
    private boolean z;

    /* access modifiers changed from: protected */
    public static final class PanelFeatureState {
        int a;
        int b;
        int c;
        int d;
        ViewGroup e;
        View f;
        View g;
        androidx.appcompat.view.menu.g h;
        androidx.appcompat.view.menu.e i;
        Context j;
        boolean k;
        boolean l;
        boolean m;
        public boolean n;
        boolean o = false;
        boolean p;
        Bundle q;

        @SuppressLint({"BanParcelableUsage"})
        private static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();
            int b;
            boolean c;
            Bundle d;

            static class a implements Parcelable.ClassLoaderCreator<SavedState> {
                a() {
                }

                /* Return type fixed from 'java.lang.Object' to match base method */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public Object[] newArray(int i) {
                    return new SavedState[i];
                }

                @Override // android.os.Parcelable.Creator
                public Object createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }
            }

            SavedState() {
            }

            static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.b = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.c = z;
                if (z) {
                    savedState.d = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            public int describeContents() {
                return 0;
            }

            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.b);
                parcel.writeInt(this.c ? 1 : 0);
                if (this.c) {
                    parcel.writeBundle(this.d);
                }
            }
        }

        PanelFeatureState(int i2) {
            this.a = i2;
        }

        /* access modifiers changed from: package-private */
        public void a(androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.e eVar;
            androidx.appcompat.view.menu.g gVar2 = this.h;
            if (gVar != gVar2) {
                if (gVar2 != null) {
                    gVar2.B(this.i);
                }
                this.h = gVar;
                if (gVar != null && (eVar = this.i) != null) {
                    gVar.b(eVar);
                }
            }
        }
    }

    static class a implements Thread.UncaughtExceptionHandler {
        final /* synthetic */ Thread.UncaughtExceptionHandler a;

        a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.a = uncaughtExceptionHandler;
        }

        public void uncaughtException(Thread thread, Throwable th) {
            String message;
            boolean z = false;
            if ((th instanceof Resources.NotFoundException) && (message = th.getMessage()) != null && (message.contains("drawable") || message.contains("Drawable"))) {
                z = true;
            }
            if (z) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                this.a.uncaughtException(thread, notFoundException);
                return;
            }
            this.a.uncaughtException(thread, th);
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.U & 1) != 0) {
                appCompatDelegateImpl.M(0);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl2.U & 4096) != 0) {
                appCompatDelegateImpl2.M(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
            }
            AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl3.T = false;
            appCompatDelegateImpl3.U = 0;
        }
    }

    private class c implements a {
        c(AppCompatDelegateImpl appCompatDelegateImpl) {
        }
    }

    /* access modifiers changed from: private */
    public final class d implements m.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z) {
            AppCompatDelegateImpl.this.I(gVar);
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            Window.Callback S = AppCompatDelegateImpl.this.S();
            if (S == null) {
                return true;
            }
            S.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, gVar);
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public class e implements k.a {
        private k.a a;

        class a extends j3 {
            a() {
            }

            @Override // defpackage.i3
            public void b(View view) {
                AppCompatDelegateImpl.this.q.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.r;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.q.getParent() instanceof View) {
                    c3.t((View) AppCompatDelegateImpl.this.q.getParent());
                }
                AppCompatDelegateImpl.this.q.removeAllViews();
                AppCompatDelegateImpl.this.t.f(null);
                AppCompatDelegateImpl.this.t = null;
            }
        }

        public e(k.a aVar) {
            this.a = aVar;
        }

        @Override // defpackage.k.a
        public void a(defpackage.k kVar) {
            this.a.a(kVar);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.r != null) {
                appCompatDelegateImpl.g.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.s);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.q != null) {
                appCompatDelegateImpl2.N();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                h3 a2 = c3.a(appCompatDelegateImpl3.q);
                a2.a(0.0f);
                appCompatDelegateImpl3.t = a2;
                AppCompatDelegateImpl.this.t.f(new a());
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            h hVar = appCompatDelegateImpl4.i;
            if (hVar != null) {
                hVar.onSupportActionModeFinished(appCompatDelegateImpl4.p);
            }
            AppCompatDelegateImpl.this.p = null;
        }

        @Override // defpackage.k.a
        public boolean b(defpackage.k kVar, Menu menu) {
            return this.a.b(kVar, menu);
        }

        @Override // defpackage.k.a
        public boolean c(defpackage.k kVar, Menu menu) {
            return this.a.c(kVar, menu);
        }

        @Override // defpackage.k.a
        public boolean d(defpackage.k kVar, MenuItem menuItem) {
            return this.a.d(kVar, menuItem);
        }
    }

    /* access modifiers changed from: private */
    public class g extends h {
        private final PowerManager c;

        g(Context context) {
            super();
            this.c = (PowerManager) context.getSystemService("power");
        }

        /* access modifiers changed from: package-private */
        @Override // androidx.appcompat.app.AppCompatDelegateImpl.h
        public IntentFilter b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.h
        public int c() {
            if (Build.VERSION.SDK_INT < 21 || !this.c.isPowerSaveMode()) {
                return 1;
            }
            return 2;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.h
        public void d() {
            AppCompatDelegateImpl.this.E();
        }
    }

    /* access modifiers changed from: package-private */
    public abstract class h {
        private BroadcastReceiver a;

        /* access modifiers changed from: package-private */
        public class a extends BroadcastReceiver {
            a() {
            }

            public void onReceive(Context context, Intent intent) {
                h.this.d();
            }
        }

        h() {
        }

        /* access modifiers changed from: package-private */
        public void a() {
            BroadcastReceiver broadcastReceiver = this.a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.a = null;
            }
        }

        /* access modifiers changed from: package-private */
        public abstract IntentFilter b();

        /* access modifiers changed from: package-private */
        public abstract int c();

        /* access modifiers changed from: package-private */
        public abstract void d();

        /* access modifiers changed from: package-private */
        public void e() {
            a();
            IntentFilter b2 = b();
            if (b2 != null && b2.countActions() != 0) {
                if (this.a == null) {
                    this.a = new a();
                }
                AppCompatDelegateImpl.this.f.registerReceiver(this.a, b2);
            }
        }
    }

    /* access modifiers changed from: private */
    public class i extends h {
        private final s c;

        i(s sVar) {
            super();
            this.c = sVar;
        }

        /* access modifiers changed from: package-private */
        @Override // androidx.appcompat.app.AppCompatDelegateImpl.h
        public IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.h
        public int c() {
            return this.c.b() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.h
        public void d() {
            AppCompatDelegateImpl.this.E();
        }
    }

    /* access modifiers changed from: private */
    public class j extends ContentFrameLayout {
        public j(Context context) {
            super(context, null);
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.L(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                    appCompatDelegateImpl.J(appCompatDelegateImpl.R(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        public void setBackgroundResource(int i) {
            setBackgroundDrawable(defpackage.d.b(getContext(), i));
        }
    }

    /* access modifiers changed from: private */
    public final class k implements m.a {
        k() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z) {
            androidx.appcompat.view.menu.g q = gVar.q();
            boolean z2 = q != gVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                gVar = q;
            }
            PanelFeatureState Q = appCompatDelegateImpl.Q(gVar);
            if (Q == null) {
                return;
            }
            if (z2) {
                AppCompatDelegateImpl.this.H(Q.a, Q, q);
                AppCompatDelegateImpl.this.J(Q, true);
                return;
            }
            AppCompatDelegateImpl.this.J(Q, z);
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            Window.Callback S;
            if (gVar != null) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.A || (S = appCompatDelegateImpl.S()) == null || AppCompatDelegateImpl.this.M) {
                return true;
            }
            S.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, gVar);
            return true;
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        boolean z2 = false;
        boolean z3 = i2 < 21;
        b0 = z3;
        if (i2 >= 21 && i2 <= 25) {
            z2 = true;
        }
        e0 = z2;
        if (z3 && !d0) {
            Thread.setDefaultUncaughtExceptionHandler(new a(Thread.getDefaultUncaughtExceptionHandler()));
        }
    }

    AppCompatDelegateImpl(Activity activity, h hVar) {
        this(activity, null, hVar, activity);
    }

    /* JADX WARNING: Removed duplicated region for block: B:102:0x018b  */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x0198  */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x01af  */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x01b8  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x01cb  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0111  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0119 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean F(boolean r13) {
        /*
        // Method dump skipped, instructions count: 467
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.F(boolean):boolean");
    }

    private void G(Window window) {
        if (this.g == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof f)) {
                f fVar = new f(callback);
                this.h = fVar;
                window.setCallback(fVar);
                i0 t2 = i0.t(this.f, null, c0);
                Drawable h2 = t2.h(0);
                if (h2 != null) {
                    window.setBackgroundDrawable(h2);
                }
                t2.v();
                this.g = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    private void O() {
        ViewGroup viewGroup;
        CharSequence charSequence;
        Context context;
        if (!this.u) {
            TypedArray obtainStyledAttributes = this.f.obtainStyledAttributes(R$styleable.k);
            if (obtainStyledAttributes.hasValue(115)) {
                if (obtainStyledAttributes.getBoolean(124, false)) {
                    w(1);
                } else if (obtainStyledAttributes.getBoolean(115, false)) {
                    w(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
                }
                if (obtainStyledAttributes.getBoolean(116, false)) {
                    w(FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD);
                }
                if (obtainStyledAttributes.getBoolean(117, false)) {
                    w(10);
                }
                this.D = obtainStyledAttributes.getBoolean(0, false);
                obtainStyledAttributes.recycle();
                P();
                this.g.getDecorView();
                LayoutInflater from = LayoutInflater.from(this.f);
                if (this.E) {
                    if (this.C) {
                        viewGroup = (ViewGroup) from.inflate(R.layout.w, (ViewGroup) null);
                    } else {
                        viewGroup = (ViewGroup) from.inflate(R.layout.v, (ViewGroup) null);
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        c3.x(viewGroup, new j(this));
                    } else {
                        ((q) viewGroup).a(new k(this));
                    }
                } else if (this.D) {
                    viewGroup = (ViewGroup) from.inflate(R.layout.m, (ViewGroup) null);
                    this.B = false;
                    this.A = false;
                } else if (this.A) {
                    TypedValue typedValue = new TypedValue();
                    this.f.getTheme().resolveAttribute(R.attr.j, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        context = new m(this.f, typedValue.resourceId);
                    } else {
                        context = this.f;
                    }
                    viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.x, (ViewGroup) null);
                    androidx.appcompat.widget.m mVar = (androidx.appcompat.widget.m) viewGroup.findViewById(R.id.g6);
                    this.m = mVar;
                    mVar.f(S());
                    if (this.B) {
                        this.m.k(FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD);
                    }
                    if (this.y) {
                        this.m.k(2);
                    }
                    if (this.z) {
                        this.m.k(5);
                    }
                } else {
                    viewGroup = null;
                }
                if (viewGroup != null) {
                    if (this.m == null) {
                        this.w = (TextView) viewGroup.findViewById(R.id.s_);
                    }
                    int i2 = p0.b;
                    try {
                        Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                        if (!method.isAccessible()) {
                            method.setAccessible(true);
                        }
                        method.invoke(viewGroup, new Object[0]);
                    } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    }
                    ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R.id.ao);
                    ViewGroup viewGroup2 = (ViewGroup) this.g.findViewById(16908290);
                    if (viewGroup2 != null) {
                        while (viewGroup2.getChildCount() > 0) {
                            View childAt = viewGroup2.getChildAt(0);
                            viewGroup2.removeViewAt(0);
                            contentFrameLayout.addView(childAt);
                        }
                        viewGroup2.setId(-1);
                        contentFrameLayout.setId(16908290);
                        if (viewGroup2 instanceof FrameLayout) {
                            ((FrameLayout) viewGroup2).setForeground(null);
                        }
                    }
                    this.g.setContentView(viewGroup);
                    contentFrameLayout.h(new l(this));
                    this.v = viewGroup;
                    Object obj = this.e;
                    if (obj instanceof Activity) {
                        charSequence = ((Activity) obj).getTitle();
                    } else {
                        charSequence = this.l;
                    }
                    if (!TextUtils.isEmpty(charSequence)) {
                        androidx.appcompat.widget.m mVar2 = this.m;
                        if (mVar2 != null) {
                            mVar2.b(charSequence);
                        } else {
                            ActionBar actionBar = this.j;
                            if (actionBar != null) {
                                actionBar.p(charSequence);
                            } else {
                                TextView textView = this.w;
                                if (textView != null) {
                                    textView.setText(charSequence);
                                }
                            }
                        }
                    }
                    ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.v.findViewById(16908290);
                    View decorView = this.g.getDecorView();
                    contentFrameLayout2.i(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
                    TypedArray obtainStyledAttributes2 = this.f.obtainStyledAttributes(R$styleable.k);
                    obtainStyledAttributes2.getValue(122, contentFrameLayout2.f());
                    obtainStyledAttributes2.getValue(123, contentFrameLayout2.g());
                    if (obtainStyledAttributes2.hasValue(120)) {
                        obtainStyledAttributes2.getValue(120, contentFrameLayout2.d());
                    }
                    if (obtainStyledAttributes2.hasValue(121)) {
                        obtainStyledAttributes2.getValue(121, contentFrameLayout2.e());
                    }
                    if (obtainStyledAttributes2.hasValue(118)) {
                        obtainStyledAttributes2.getValue(118, contentFrameLayout2.b());
                    }
                    if (obtainStyledAttributes2.hasValue(119)) {
                        obtainStyledAttributes2.getValue(119, contentFrameLayout2.c());
                    }
                    obtainStyledAttributes2.recycle();
                    contentFrameLayout2.requestLayout();
                    this.u = true;
                    PanelFeatureState R2 = R(0);
                    if (!this.M && R2.h == null) {
                        U(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
                        return;
                    }
                    return;
                }
                StringBuilder q2 = ic.q("AppCompat does not support the current theme features: { windowActionBar: ");
                q2.append(this.A);
                q2.append(", windowActionBarOverlay: ");
                q2.append(this.B);
                q2.append(", android:windowIsFloating: ");
                q2.append(this.D);
                q2.append(", windowActionModeOverlay: ");
                q2.append(this.C);
                q2.append(", windowNoTitle: ");
                q2.append(this.E);
                q2.append(" }");
                throw new IllegalArgumentException(q2.toString());
            }
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
    }

    private void P() {
        if (this.g == null) {
            Object obj = this.e;
            if (obj instanceof Activity) {
                G(((Activity) obj).getWindow());
            }
        }
        if (this.g == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private void T() {
        O();
        if (this.A && this.j == null) {
            Object obj = this.e;
            if (obj instanceof Activity) {
                this.j = new t((Activity) this.e, this.B);
            } else if (obj instanceof Dialog) {
                this.j = new t((Dialog) this.e);
            }
            ActionBar actionBar = this.j;
            if (actionBar != null) {
                actionBar.m(this.W);
            }
        }
    }

    private void U(int i2) {
        this.U = (1 << i2) | this.U;
        if (!this.T) {
            View decorView = this.g.getDecorView();
            Runnable runnable = this.V;
            int i3 = c3.g;
            decorView.postOnAnimation(runnable);
            this.T = true;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0134, code lost:
        if (r14 != null) goto L_0x0136;
     */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x013b  */
    /* JADX WARNING: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void Z(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r13, android.view.KeyEvent r14) {
        /*
        // Method dump skipped, instructions count: 433
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.Z(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):void");
    }

    private boolean a0(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent, int i3) {
        androidx.appcompat.view.menu.g gVar;
        boolean z2 = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.k || b0(panelFeatureState, keyEvent)) && (gVar = panelFeatureState.h) != null) {
            z2 = gVar.performShortcut(i2, keyEvent, i3);
        }
        if (z2 && (i3 & 1) == 0 && this.m == null) {
            J(panelFeatureState, true);
        }
        return z2;
    }

    private boolean b0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        androidx.appcompat.widget.m mVar;
        androidx.appcompat.widget.m mVar2;
        androidx.appcompat.widget.m mVar3;
        Resources.Theme theme;
        androidx.appcompat.widget.m mVar4;
        if (this.M) {
            return false;
        }
        if (panelFeatureState.k) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.H;
        if (!(panelFeatureState2 == null || panelFeatureState2 == panelFeatureState)) {
            J(panelFeatureState2, false);
        }
        Window.Callback S2 = S();
        if (S2 != null) {
            panelFeatureState.g = S2.onCreatePanelView(panelFeatureState.a);
        }
        int i2 = panelFeatureState.a;
        boolean z2 = i2 == 0 || i2 == 108;
        if (z2 && (mVar4 = this.m) != null) {
            mVar4.d();
        }
        if (panelFeatureState.g == null && (!z2 || !(this.j instanceof q))) {
            androidx.appcompat.view.menu.g gVar = panelFeatureState.h;
            if (gVar == null || panelFeatureState.p) {
                if (gVar == null) {
                    Context context = this.f;
                    int i3 = panelFeatureState.a;
                    if ((i3 == 0 || i3 == 108) && this.m != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(R.attr.j, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(R.attr.k, typedValue, true);
                        } else {
                            theme2.resolveAttribute(R.attr.k, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            m mVar5 = new m(context, 0);
                            mVar5.getTheme().setTo(theme);
                            context = mVar5;
                        }
                    }
                    androidx.appcompat.view.menu.g gVar2 = new androidx.appcompat.view.menu.g(context);
                    gVar2.G(this);
                    panelFeatureState.a(gVar2);
                    if (panelFeatureState.h == null) {
                        return false;
                    }
                }
                if (z2 && (mVar3 = this.m) != null) {
                    if (this.n == null) {
                        this.n = new d();
                    }
                    mVar3.a(panelFeatureState.h, this.n);
                }
                panelFeatureState.h.R();
                if (!S2.onCreatePanelMenu(panelFeatureState.a, panelFeatureState.h)) {
                    panelFeatureState.a(null);
                    if (z2 && (mVar2 = this.m) != null) {
                        mVar2.a(null, this.n);
                    }
                    return false;
                }
                panelFeatureState.p = false;
            }
            panelFeatureState.h.R();
            Bundle bundle = panelFeatureState.q;
            if (bundle != null) {
                panelFeatureState.h.C(bundle);
                panelFeatureState.q = null;
            }
            if (!S2.onPreparePanel(0, panelFeatureState.g, panelFeatureState.h)) {
                if (z2 && (mVar = this.m) != null) {
                    mVar.a(null, this.n);
                }
                panelFeatureState.h.Q();
                return false;
            }
            boolean z3 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.n = z3;
            panelFeatureState.h.setQwertyMode(z3);
            panelFeatureState.h.Q();
        }
        panelFeatureState.k = true;
        panelFeatureState.l = false;
        this.H = panelFeatureState;
        return true;
    }

    private void d0() {
        if (this.u) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    @Override // androidx.appcompat.app.i
    public void A(Toolbar toolbar) {
        CharSequence charSequence;
        if (this.e instanceof Activity) {
            T();
            ActionBar actionBar = this.j;
            if (!(actionBar instanceof t)) {
                this.k = null;
                if (actionBar != null) {
                    actionBar.h();
                }
                if (toolbar != null) {
                    Object obj = this.e;
                    if (obj instanceof Activity) {
                        charSequence = ((Activity) obj).getTitle();
                    } else {
                        charSequence = this.l;
                    }
                    q qVar = new q(toolbar, charSequence, this.h);
                    this.j = qVar;
                    this.g.setCallback(qVar.c);
                } else {
                    this.j = null;
                    this.g.setCallback(this.h);
                }
                k();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    @Override // androidx.appcompat.app.i
    public void B(int i2) {
        this.O = i2;
    }

    @Override // androidx.appcompat.app.i
    public final void C(CharSequence charSequence) {
        this.l = charSequence;
        androidx.appcompat.widget.m mVar = this.m;
        if (mVar != null) {
            mVar.b(charSequence);
            return;
        }
        ActionBar actionBar = this.j;
        if (actionBar != null) {
            actionBar.p(charSequence);
            return;
        }
        TextView textView = this.w;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0047  */
    @Override // androidx.appcompat.app.i
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.k D(defpackage.k.a r8) {
        /*
        // Method dump skipped, instructions count: 426
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.D(k$a):k");
    }

    public boolean E() {
        return F(true);
    }

    /* access modifiers changed from: package-private */
    public void H(int i2, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null && panelFeatureState != null) {
            menu = panelFeatureState.h;
        }
        if ((panelFeatureState == null || panelFeatureState.m) && !this.M) {
            this.h.a().onPanelClosed(i2, menu);
        }
    }

    /* access modifiers changed from: package-private */
    public void I(androidx.appcompat.view.menu.g gVar) {
        if (!this.F) {
            this.F = true;
            this.m.l();
            Window.Callback S2 = S();
            if (S2 != null && !this.M) {
                S2.onPanelClosed(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, gVar);
            }
            this.F = false;
        }
    }

    /* access modifiers changed from: package-private */
    public void J(PanelFeatureState panelFeatureState, boolean z2) {
        ViewGroup viewGroup;
        androidx.appcompat.widget.m mVar;
        if (!z2 || panelFeatureState.a != 0 || (mVar = this.m) == null || !mVar.c()) {
            WindowManager windowManager = (WindowManager) this.f.getSystemService("window");
            if (!(windowManager == null || !panelFeatureState.m || (viewGroup = panelFeatureState.e) == null)) {
                windowManager.removeView(viewGroup);
                if (z2) {
                    H(panelFeatureState.a, panelFeatureState, null);
                }
            }
            panelFeatureState.k = false;
            panelFeatureState.l = false;
            panelFeatureState.m = false;
            panelFeatureState.f = null;
            panelFeatureState.o = true;
            if (this.H == panelFeatureState) {
                this.H = null;
                return;
            }
            return;
        }
        I(panelFeatureState.h);
    }

    /* access modifiers changed from: package-private */
    public void K() {
        androidx.appcompat.widget.m mVar = this.m;
        if (mVar != null) {
            mVar.l();
        }
        if (this.r != null) {
            this.g.getDecorView().removeCallbacks(this.s);
            if (this.r.isShowing()) {
                try {
                    this.r.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.r = null;
        }
        N();
        androidx.appcompat.view.menu.g gVar = R(0).h;
        if (gVar != null) {
            gVar.e(true);
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00d4  */
    /* JADX WARNING: Removed duplicated region for block: B:86:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean L(android.view.KeyEvent r7) {
        /*
        // Method dump skipped, instructions count: 281
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.L(android.view.KeyEvent):boolean");
    }

    /* access modifiers changed from: package-private */
    public void M(int i2) {
        PanelFeatureState R2 = R(i2);
        if (R2.h != null) {
            Bundle bundle = new Bundle();
            R2.h.E(bundle);
            if (bundle.size() > 0) {
                R2.q = bundle;
            }
            R2.h.R();
            R2.h.clear();
        }
        R2.p = true;
        R2.o = true;
        if ((i2 == 108 || i2 == 0) && this.m != null) {
            PanelFeatureState R3 = R(0);
            R3.k = false;
            b0(R3, null);
        }
    }

    /* access modifiers changed from: package-private */
    public void N() {
        h3 h3Var = this.t;
        if (h3Var != null) {
            h3Var.b();
        }
    }

    /* access modifiers changed from: package-private */
    public PanelFeatureState Q(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.G;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null && panelFeatureState.h == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public PanelFeatureState R(int i2) {
        PanelFeatureState[] panelFeatureStateArr = this.G;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[(i2 + 1)];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.G = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i2);
        panelFeatureStateArr[i2] = panelFeatureState2;
        return panelFeatureState2;
    }

    /* access modifiers changed from: package-private */
    public final Window.Callback S() {
        return this.g.getCallback();
    }

    public boolean V() {
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean W(int i2, KeyEvent keyEvent) {
        T();
        ActionBar actionBar = this.j;
        if (actionBar != null && actionBar.i(i2, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.H;
        if (panelFeatureState == null || !a0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.H == null) {
                PanelFeatureState R2 = R(0);
                b0(R2, keyEvent);
                boolean a02 = a0(R2, keyEvent.getKeyCode(), keyEvent, 1);
                R2.k = false;
                if (a02) {
                    return true;
                }
            }
            return false;
        }
        PanelFeatureState panelFeatureState2 = this.H;
        if (panelFeatureState2 != null) {
            panelFeatureState2.l = true;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public void X(int i2) {
        if (i2 == 108) {
            T();
            ActionBar actionBar = this.j;
            if (actionBar != null) {
                actionBar.c(true);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void Y(int i2) {
        if (i2 == 108) {
            T();
            ActionBar actionBar = this.j;
            if (actionBar != null) {
                actionBar.c(false);
            }
        } else if (i2 == 0) {
            PanelFeatureState R2 = R(i2);
            if (R2.m) {
                J(R2, false);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        PanelFeatureState Q2;
        Window.Callback S2 = S();
        if (S2 == null || this.M || (Q2 = Q(gVar.q())) == null) {
            return false;
        }
        return S2.onMenuItemSelected(Q2.a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void b(androidx.appcompat.view.menu.g gVar) {
        androidx.appcompat.widget.m mVar = this.m;
        if (mVar == null || !mVar.e() || (ViewConfiguration.get(this.f).hasPermanentMenuKey() && !this.m.h())) {
            PanelFeatureState R2 = R(0);
            R2.o = true;
            J(R2, false);
            Z(R2, null);
            return;
        }
        Window.Callback S2 = S();
        if (this.m.c()) {
            this.m.i();
            if (!this.M) {
                S2.onPanelClosed(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, R(0).h);
            }
        } else if (S2 != null && !this.M) {
            if (this.T && (1 & this.U) != 0) {
                this.g.getDecorView().removeCallbacks(this.V);
                this.V.run();
            }
            PanelFeatureState R3 = R(0);
            androidx.appcompat.view.menu.g gVar2 = R3.h;
            if (gVar2 != null && !R3.p && S2.onPreparePanel(0, R3.g, gVar2)) {
                S2.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, R3.h);
                this.m.j();
            }
        }
    }

    @Override // androidx.appcompat.app.i
    public void c(View view, ViewGroup.LayoutParams layoutParams) {
        O();
        ((ViewGroup) this.v.findViewById(16908290)).addView(view, layoutParams);
        this.h.a().onContentChanged();
    }

    /* access modifiers changed from: package-private */
    public final boolean c0() {
        ViewGroup viewGroup;
        if (this.u && (viewGroup = this.v) != null) {
            int i2 = c3.g;
            if (viewGroup.isLaidOut()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.i
    public void d(Context context) {
        F(false);
        this.J = true;
    }

    @Override // androidx.appcompat.app.i
    public <T extends View> T e(int i2) {
        O();
        return (T) this.g.findViewById(i2);
    }

    /* access modifiers changed from: package-private */
    public int e0(int i2) {
        boolean z2;
        boolean z3;
        ActionBarContextView actionBarContextView = this.q;
        int i3 = 0;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.q.getLayoutParams();
            boolean z4 = true;
            if (this.q.isShown()) {
                if (this.X == null) {
                    this.X = new Rect();
                    this.Y = new Rect();
                }
                Rect rect = this.X;
                Rect rect2 = this.Y;
                rect.set(0, i2, 0, 0);
                p0.a(this.v, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i2 : 0)) {
                    marginLayoutParams.topMargin = i2;
                    View view = this.x;
                    if (view == null) {
                        View view2 = new View(this.f);
                        this.x = view2;
                        view2.setBackgroundColor(this.f.getResources().getColor(R.color.h));
                        this.v.addView(this.x, -1, new ViewGroup.LayoutParams(-1, i2));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i2) {
                            layoutParams.height = i2;
                            this.x.setLayoutParams(layoutParams);
                        }
                    }
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (this.x == null) {
                    z4 = false;
                }
                if (!this.C && z4) {
                    i2 = 0;
                }
                z4 = z3;
                z2 = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z2 = false;
                z4 = false;
            }
            if (z4) {
                this.q.setLayoutParams(marginLayoutParams);
            }
        }
        View view3 = this.x;
        if (view3 != null) {
            if (!z2) {
                i3 = 8;
            }
            view3.setVisibility(i3);
        }
        return i2;
    }

    @Override // androidx.appcompat.app.i
    public final a f() {
        return new c(this);
    }

    @Override // androidx.appcompat.app.i
    public int g() {
        return this.N;
    }

    @Override // androidx.appcompat.app.i
    public MenuInflater h() {
        if (this.k == null) {
            T();
            ActionBar actionBar = this.j;
            this.k = new p(actionBar != null ? actionBar.e() : this.f);
        }
        return this.k;
    }

    @Override // androidx.appcompat.app.i
    public ActionBar i() {
        T();
        return this.j;
    }

    @Override // androidx.appcompat.app.i
    public void j() {
        LayoutInflater from = LayoutInflater.from(this.f);
        if (from.getFactory() == null) {
            r2.b(from, this);
        } else if (!(from.getFactory2() instanceof AppCompatDelegateImpl)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // androidx.appcompat.app.i
    public void k() {
        T();
        ActionBar actionBar = this.j;
        if (actionBar == null || !actionBar.f()) {
            U(0);
        }
    }

    @Override // androidx.appcompat.app.i
    public void n(Configuration configuration) {
        if (this.A && this.u) {
            T();
            ActionBar actionBar = this.j;
            if (actionBar != null) {
                actionBar.g(configuration);
            }
        }
        androidx.appcompat.widget.e.b().g(this.f);
        F(false);
    }

    @Override // androidx.appcompat.app.i
    public void o(Bundle bundle) {
        this.J = true;
        F(false);
        P();
        Object obj = this.e;
        if (obj instanceof Activity) {
            String str = null;
            try {
                Activity activity = (Activity) obj;
                try {
                    str = androidx.core.app.b.R(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new IllegalArgumentException(e2);
                }
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                ActionBar actionBar = this.j;
                if (actionBar == null) {
                    this.W = true;
                } else {
                    actionBar.m(true);
                }
            }
        }
        this.K = true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0072, code lost:
        if (((org.xmlpull.v1.XmlPullParser) r15).getDepth() > 1) goto L_0x0083;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.view.View onCreateView(android.view.View r12, java.lang.String r13, android.content.Context r14, android.util.AttributeSet r15) {
        /*
        // Method dump skipped, instructions count: 177
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // androidx.appcompat.app.i
    public void p() {
        i.m(this);
        if (this.T) {
            this.g.getDecorView().removeCallbacks(this.V);
        }
        this.L = false;
        this.M = true;
        ActionBar actionBar = this.j;
        if (actionBar != null) {
            actionBar.h();
        }
        h hVar = this.R;
        if (hVar != null) {
            hVar.a();
        }
        h hVar2 = this.S;
        if (hVar2 != null) {
            hVar2.a();
        }
    }

    @Override // androidx.appcompat.app.i
    public void q(Bundle bundle) {
        O();
    }

    @Override // androidx.appcompat.app.i
    public void r() {
        T();
        ActionBar actionBar = this.j;
        if (actionBar != null) {
            actionBar.o(true);
        }
    }

    @Override // androidx.appcompat.app.i
    public void s(Bundle bundle) {
        if (this.N != -100) {
            ((e0) a0).put(this.e.getClass(), Integer.valueOf(this.N));
        }
    }

    @Override // androidx.appcompat.app.i
    public void t() {
        this.L = true;
        E();
        i.l(this);
    }

    @Override // androidx.appcompat.app.i
    public void u() {
        this.L = false;
        i.m(this);
        T();
        ActionBar actionBar = this.j;
        if (actionBar != null) {
            actionBar.o(false);
        }
        if (this.e instanceof Dialog) {
            h hVar = this.R;
            if (hVar != null) {
                hVar.a();
            }
            h hVar2 = this.S;
            if (hVar2 != null) {
                hVar2.a();
            }
        }
    }

    @Override // androidx.appcompat.app.i
    public boolean w(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i2 = FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS;
        } else if (i2 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD;
        }
        if (this.E && i2 == 108) {
            return false;
        }
        if (this.A && i2 == 1) {
            this.A = false;
        }
        if (i2 == 1) {
            d0();
            this.E = true;
            return true;
        } else if (i2 == 2) {
            d0();
            this.y = true;
            return true;
        } else if (i2 == 5) {
            d0();
            this.z = true;
            return true;
        } else if (i2 == 10) {
            d0();
            this.C = true;
            return true;
        } else if (i2 == 108) {
            d0();
            this.A = true;
            return true;
        } else if (i2 != 109) {
            return this.g.requestFeature(i2);
        } else {
            d0();
            this.B = true;
            return true;
        }
    }

    @Override // androidx.appcompat.app.i
    public void x(int i2) {
        O();
        ViewGroup viewGroup = (ViewGroup) this.v.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f).inflate(i2, viewGroup);
        this.h.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.i
    public void y(View view) {
        O();
        ViewGroup viewGroup = (ViewGroup) this.v.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.h.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.i
    public void z(View view, ViewGroup.LayoutParams layoutParams) {
        O();
        ViewGroup viewGroup = (ViewGroup) this.v.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.h.a().onContentChanged();
    }

    AppCompatDelegateImpl(Dialog dialog, h hVar) {
        this(dialog.getContext(), dialog.getWindow(), hVar, dialog);
    }

    private AppCompatDelegateImpl(Context context, Window window, h hVar, Object obj) {
        AppCompatActivity appCompatActivity = null;
        this.t = null;
        this.N = -100;
        this.V = new b();
        this.f = context;
        this.i = hVar;
        this.e = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof AppCompatActivity)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        }
                        context = ((ContextWrapper) context).getBaseContext();
                    } else {
                        appCompatActivity = (AppCompatActivity) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (appCompatActivity != null) {
                this.N = appCompatActivity.getDelegate().g();
            }
        }
        if (this.N == -100) {
            e0 e0Var = (e0) a0;
            Integer num = (Integer) e0Var.get(this.e.getClass());
            if (num != null) {
                this.N = num.intValue();
                e0Var.remove(this.e.getClass());
            }
        }
        if (window != null) {
            G(window);
        }
        androidx.appcompat.widget.e.h();
    }

    /* access modifiers changed from: package-private */
    public class f extends r {
        f(Window.Callback callback) {
            super(callback);
        }

        /* access modifiers changed from: package-private */
        public final ActionMode b(ActionMode.Callback callback) {
            o.a aVar = new o.a(AppCompatDelegateImpl.this.f, callback);
            defpackage.k D = AppCompatDelegateImpl.this.D(aVar);
            if (D != null) {
                return aVar.e(D);
            }
            return null;
        }

        @Override // defpackage.r
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.L(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // defpackage.r
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.W(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // defpackage.r
        public void onContentChanged() {
        }

        @Override // defpackage.r
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof androidx.appcompat.view.menu.g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // defpackage.r
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl.this.X(i);
            return true;
        }

        @Override // defpackage.r
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.Y(i);
        }

        @Override // defpackage.r
        public boolean onPreparePanel(int i, View view, Menu menu) {
            androidx.appcompat.view.menu.g gVar = menu instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) menu : null;
            if (i == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.P(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (gVar != null) {
                gVar.P(false);
            }
            return onPreparePanel;
        }

        @Override // defpackage.r, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            androidx.appcompat.view.menu.g gVar = AppCompatDelegateImpl.this.R(0).h;
            if (gVar != null) {
                super.onProvideKeyboardShortcuts(list, gVar, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // defpackage.r
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (AppCompatDelegateImpl.this.V()) {
                return b(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        @Override // defpackage.r
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (!AppCompatDelegateImpl.this.V() || i != 0) {
                return super.onWindowStartingActionMode(callback, i);
            }
            return b(callback);
        }
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
