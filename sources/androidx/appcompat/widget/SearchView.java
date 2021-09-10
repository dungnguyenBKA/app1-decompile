package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.customview.view.AbsSavedState;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.WeakHashMap;
import photoeditor.cutout.backgrounderaser.R;

public class SearchView extends LinearLayoutCompat implements defpackage.l {
    static final k d0 = new k();
    private Rect A;
    private Rect B;
    private int[] C;
    private int[] D;
    private final ImageView E;
    private final Drawable F;
    private final Intent G;
    private final Intent H;
    private final CharSequence I;
    private boolean J;
    private boolean K;
    private CharSequence L;
    private boolean M;
    private int N;
    private CharSequence O;
    private CharSequence P;
    private boolean Q;
    private int R;
    private final Runnable S;
    private Runnable T;
    private final View.OnClickListener U;
    View.OnKeyListener V;
    private final TextView.OnEditorActionListener W;
    private final AdapterView.OnItemClickListener a0;
    private final AdapterView.OnItemSelectedListener b0;
    private TextWatcher c0;
    final SearchAutoComplete q;
    private final View r;
    private final View s;
    private final View t;
    final ImageView u;
    final ImageView v;
    final ImageView w;
    final ImageView x;
    private final View y;
    private l z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean d;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder q = ic.q("SearchView.SavedState{");
            q.append(Integer.toHexString(System.identityHashCode(this)));
            q.append(" isIconified=");
            q.append(this.d);
            q.append("}");
            return q.toString();
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.d));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {
        private int e;
        private SearchView f;
        private boolean g;
        final Runnable h;

        class a implements Runnable {
            a() {
            }

            public void run() {
                SearchAutoComplete.this.c();
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.am);
        }

        /* access modifiers changed from: package-private */
        public void a(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.g = false;
                removeCallbacks(this.h);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.g = false;
                removeCallbacks(this.h);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.g = true;
            }
        }

        /* access modifiers changed from: package-private */
        public void b(SearchView searchView) {
            this.f = searchView;
        }

        /* access modifiers changed from: package-private */
        public void c() {
            if (this.g) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.g = false;
            }
        }

        public boolean enoughToFilter() {
            return this.e <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.g) {
                removeCallbacks(this.h);
                post(this.h);
            }
            return onCreateInputConnection;
        }

        /* access modifiers changed from: protected */
        public void onFinishInflate() {
            super.onFinishInflate();
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            setMinWidth((int) TypedValue.applyDimension(1, (float) ((i < 960 || i2 < 720 || configuration.orientation != 2) ? (i >= 600 || (i >= 640 && i2 >= 480)) ? 192 : 160 : 256), displayMetrics));
        }

        /* access modifiers changed from: protected */
        public void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f.E();
        }

        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f.clearFocus();
                        a(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f.hasFocus() && getVisibility() == 0) {
                this.g = true;
                Context context = getContext();
                k kVar = SearchView.d0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    SearchView.d0.c(this, true);
                }
            }
        }

        public void performCompletion() {
        }

        /* access modifiers changed from: protected */
        public void replaceText(CharSequence charSequence) {
        }

        public void setThreshold(int i) {
            super.setThreshold(i);
            this.e = i;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.h = new a();
            this.e = getThreshold();
        }
    }

    class a implements TextWatcher {
        a() {
        }

        public void afterTextChanged(Editable editable) {
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView.this.D(charSequence);
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            SearchView.this.G();
        }
    }

    class c implements Runnable {
        c() {
        }

        public void run() {
            Objects.requireNonNull(SearchView.this);
        }
    }

    class d implements View.OnFocusChangeListener {
        d() {
        }

        public void onFocusChange(View view, boolean z) {
            Objects.requireNonNull(SearchView.this);
        }
    }

    class e implements View.OnLayoutChangeListener {
        e() {
        }

        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView.this.x();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.u) {
                searchView.B();
            } else if (view == searchView.w) {
                searchView.z();
            } else if (view == searchView.v) {
                searchView.C();
            } else if (view == searchView.x) {
                Objects.requireNonNull(searchView);
            } else if (view == searchView.q) {
                searchView.y();
            }
        }
    }

    class g implements View.OnKeyListener {
        g() {
        }

        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            Objects.requireNonNull(SearchView.this);
            return false;
        }
    }

    class h implements TextView.OnEditorActionListener {
        h() {
        }

        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.C();
            return true;
        }
    }

    class i implements AdapterView.OnItemClickListener {
        i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.A(i);
        }
    }

    class j implements AdapterView.OnItemSelectedListener {
        j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.q.getText();
            throw null;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* access modifiers changed from: private */
    public static class k {
        private Method a;
        private Method b;
        private Method c;

        k() {
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        /* access modifiers changed from: package-private */
        public void a(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void b(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void c(AutoCompleteTextView autoCompleteTextView, boolean z) {
            Method method = this.c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.valueOf(z));
                } catch (Exception unused) {
                }
            }
        }
    }

    private static class l extends TouchDelegate {
        private final View a;
        private final Rect b = new Rect();
        private final Rect c = new Rect();
        private final Rect d = new Rect();
        private final int e;
        private boolean f;

        public l(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            a(rect, rect2);
            this.a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.b.set(rect);
            this.d.set(rect);
            Rect rect3 = this.d;
            int i = this.e;
            rect3.inset(-i, -i);
            this.c.set(rect2);
        }

        /* JADX WARNING: Removed duplicated region for block: B:19:0x0041  */
        /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onTouchEvent(android.view.MotionEvent r8) {
            /*
            // Method dump skipped, instructions count: 115
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.l.onTouchEvent(android.view.MotionEvent):boolean");
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private void F() {
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.q.getText());
        int i2 = 0;
        if (!z3 && (!this.J || this.Q)) {
            z2 = false;
        }
        ImageView imageView = this.w;
        if (!z2) {
            i2 = 8;
        }
        imageView.setVisibility(i2);
        Drawable drawable = this.w.getDrawable();
        if (drawable != null) {
            drawable.setState(z3 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    private void H() {
        SpannableStringBuilder spannableStringBuilder = this.L;
        if (spannableStringBuilder == null) {
            spannableStringBuilder = this.I;
        }
        SearchAutoComplete searchAutoComplete = this.q;
        if (spannableStringBuilder == null) {
            spannableStringBuilder = "";
        }
        if (this.J && this.F != null) {
            double textSize = (double) searchAutoComplete.getTextSize();
            Double.isNaN(textSize);
            Double.isNaN(textSize);
            int i2 = (int) (textSize * 1.25d);
            this.F.setBounds(0, 0, i2, i2);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("   ");
            spannableStringBuilder2.setSpan(new ImageSpan(this.F), 1, 2, 33);
            spannableStringBuilder2.append(spannableStringBuilder);
            spannableStringBuilder = spannableStringBuilder2;
        }
        searchAutoComplete.setHint(spannableStringBuilder);
    }

    private void I(boolean z2) {
        this.K = z2;
        int i2 = 0;
        int i3 = z2 ? 0 : 8;
        TextUtils.isEmpty(this.q.getText());
        this.u.setVisibility(i3);
        this.v.setVisibility(8);
        this.r.setVisibility(z2 ? 8 : 0);
        if (this.E.getDrawable() == null || this.J) {
            i2 = 8;
        }
        this.E.setVisibility(i2);
        F();
        this.x.setVisibility(8);
        this.t.setVisibility(8);
    }

    /* access modifiers changed from: package-private */
    public boolean A(int i2) {
        throw null;
    }

    /* access modifiers changed from: package-private */
    public void B() {
        I(false);
        this.q.requestFocus();
        this.q.a(true);
    }

    /* access modifiers changed from: package-private */
    public void C() {
        Editable text = this.q.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            this.q.a(false);
            this.q.dismissDropDown();
        }
    }

    /* access modifiers changed from: package-private */
    public void D(CharSequence charSequence) {
        Editable text = this.q.getText();
        this.P = text;
        TextUtils.isEmpty(text);
        this.v.setVisibility(8);
        this.x.setVisibility(8);
        F();
        this.t.setVisibility(8);
        this.O = charSequence.toString();
    }

    /* access modifiers changed from: package-private */
    public void E() {
        I(this.K);
        post(this.S);
        if (this.q.hasFocus()) {
            y();
        }
    }

    /* access modifiers changed from: package-private */
    public void G() {
        int[] iArr = this.q.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.s.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.t.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public void clearFocus() {
        this.M = true;
        super.clearFocus();
        this.q.clearFocus();
        this.q.a(false);
        this.M = false;
    }

    @Override // defpackage.l
    public void d() {
        if (!this.Q) {
            this.Q = true;
            int imeOptions = this.q.getImeOptions();
            this.R = imeOptions;
            this.q.setImeOptions(imeOptions | 33554432);
            this.q.setText("");
            I(false);
            this.q.requestFocus();
            this.q.a(true);
        }
    }

    @Override // defpackage.l
    public void e() {
        this.q.setText("");
        SearchAutoComplete searchAutoComplete = this.q;
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.P = "";
        clearFocus();
        I(true);
        this.q.setImeOptions(this.R);
        this.Q = false;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        removeCallbacks(this.S);
        post(this.T);
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (z2) {
            SearchAutoComplete searchAutoComplete = this.q;
            Rect rect = this.A;
            searchAutoComplete.getLocationInWindow(this.C);
            getLocationInWindow(this.D);
            int[] iArr = this.C;
            int i6 = iArr[1];
            int[] iArr2 = this.D;
            int i7 = i6 - iArr2[1];
            int i8 = iArr[0] - iArr2[0];
            rect.set(i8, i7, searchAutoComplete.getWidth() + i8, searchAutoComplete.getHeight() + i7);
            Rect rect2 = this.B;
            Rect rect3 = this.A;
            rect2.set(rect3.left, 0, rect3.right, i5 - i3);
            l lVar = this.z;
            if (lVar == null) {
                l lVar2 = new l(this.B, this.A, this.q);
                this.z = lVar2;
                setTouchDelegate(lVar2);
                return;
            }
            lVar.a(this.B, this.A);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    public void onMeasure(int i2, int i3) {
        int i4;
        if (this.K) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i5 = this.N;
            size = i5 > 0 ? Math.min(i5, size) : Math.min(getContext().getResources().getDimensionPixelSize(R.dimen.as), size);
        } else if (mode == 0) {
            size = this.N;
            if (size <= 0) {
                size = getContext().getResources().getDimensionPixelSize(R.dimen.as);
            }
        } else if (mode == 1073741824 && (i4 = this.N) > 0) {
            size = Math.min(i4, size);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getContext().getResources().getDimensionPixelSize(R.dimen.ar), size2);
        } else if (mode2 == 0) {
            size2 = getContext().getResources().getDimensionPixelSize(R.dimen.ar);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        I(savedState.d);
        requestLayout();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = this.K;
        return savedState;
    }

    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        post(this.S);
    }

    public boolean requestFocus(int i2, Rect rect) {
        if (this.M || !isFocusable()) {
            return false;
        }
        if (this.K) {
            return super.requestFocus(i2, rect);
        }
        boolean requestFocus = this.q.requestFocus(i2, rect);
        if (requestFocus) {
            I(false);
        }
        return requestFocus;
    }

    /* access modifiers changed from: package-private */
    public void x() {
        int i2;
        int i3;
        if (this.y.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.s.getPaddingLeft();
            Rect rect = new Rect();
            boolean b2 = p0.b(this);
            if (this.J) {
                i2 = resources.getDimensionPixelSize(R.dimen.af) + resources.getDimensionPixelSize(R.dimen.ae);
            } else {
                i2 = 0;
            }
            this.q.getDropDownBackground().getPadding(rect);
            if (b2) {
                i3 = -rect.left;
            } else {
                i3 = paddingLeft - (rect.left + i2);
            }
            this.q.setDropDownHorizontalOffset(i3);
            this.q.setDropDownWidth((((this.y.getWidth() + rect.left) + rect.right) + i2) - paddingLeft);
        }
    }

    /* access modifiers changed from: package-private */
    public void y() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.q.refreshAutoCompleteResults();
            return;
        }
        k kVar = d0;
        kVar.b(this.q);
        kVar.a(this.q);
    }

    /* access modifiers changed from: package-private */
    public void z() {
        if (!TextUtils.isEmpty(this.q.getText())) {
            this.q.setText("");
            this.q.requestFocus();
            this.q.a(true);
        } else if (this.J) {
            clearFocus();
            I(true);
        }
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.qg);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.A = new Rect();
        this.B = new Rect();
        this.C = new int[2];
        this.D = new int[2];
        this.S = new b();
        this.T = new c();
        new WeakHashMap();
        f fVar = new f();
        this.U = fVar;
        this.V = new g();
        h hVar = new h();
        this.W = hVar;
        i iVar = new i();
        this.a0 = iVar;
        j jVar = new j();
        this.b0 = jVar;
        this.c0 = new a();
        i0 u2 = i0.u(context, attributeSet, R$styleable.v, i2, 0);
        LayoutInflater.from(context).inflate(u2.n(9, R.layout.z), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.p7);
        this.q = searchAutoComplete;
        searchAutoComplete.b(this);
        this.r = findViewById(R.id.p3);
        View findViewById = findViewById(R.id.p6);
        this.s = findViewById;
        View findViewById2 = findViewById(R.id.r8);
        this.t = findViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.p1);
        this.u = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.p4);
        this.v = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.p2);
        this.w = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.p8);
        this.x = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.p5);
        this.E = imageView5;
        Drawable g2 = u2.g(10);
        int i3 = c3.g;
        findViewById.setBackground(g2);
        findViewById2.setBackground(u2.g(14));
        imageView.setImageDrawable(u2.g(13));
        imageView2.setImageDrawable(u2.g(7));
        imageView3.setImageDrawable(u2.g(4));
        imageView4.setImageDrawable(u2.g(16));
        imageView5.setImageDrawable(u2.g(13));
        this.F = u2.g(12);
        l0.b(imageView, getResources().getString(R.string.w));
        u2.n(15, R.layout.y);
        u2.n(5, 0);
        imageView.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView4.setOnClickListener(fVar);
        searchAutoComplete.setOnClickListener(fVar);
        searchAutoComplete.addTextChangedListener(this.c0);
        searchAutoComplete.setOnEditorActionListener(hVar);
        searchAutoComplete.setOnItemClickListener(iVar);
        searchAutoComplete.setOnItemSelectedListener(jVar);
        searchAutoComplete.setOnKeyListener(this.V);
        searchAutoComplete.setOnFocusChangeListener(new d());
        boolean a2 = u2.a(8, true);
        if (this.J != a2) {
            this.J = a2;
            I(a2);
            H();
        }
        int f2 = u2.f(1, -1);
        if (f2 != -1) {
            this.N = f2;
            requestLayout();
        }
        this.I = u2.p(6);
        this.L = u2.p(11);
        int k2 = u2.k(3, -1);
        if (k2 != -1) {
            searchAutoComplete.setImeOptions(k2);
        }
        int k3 = u2.k(2, -1);
        if (k3 != -1) {
            searchAutoComplete.setInputType(k3);
        }
        setFocusable(u2.a(0, true));
        u2.v();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.G = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.H = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.y = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new e());
        }
        I(this.J);
        H();
    }
}
