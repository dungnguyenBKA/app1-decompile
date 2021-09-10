package androidx.appcompat.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.g;
import photoeditor.cutout.backgrounderaser.R;

public class AppCompatSpinner extends Spinner implements b3 {
    private static final int[] j = {16843505};
    private final c b;
    private final Context c;
    private r d;
    private SpinnerAdapter e;
    private final boolean f;
    private e g;
    int h;
    final Rect i;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean b;

        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.b ? (byte) 1 : 0);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.b = parcel.readByte() != 0;
        }
    }

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.b().a()) {
                AppCompatSpinner.this.c();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    class b implements e, DialogInterface.OnClickListener {
        g b;
        private ListAdapter c;
        private CharSequence d;

        b() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public boolean a() {
            g gVar = this.b;
            if (gVar != null) {
                return gVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void dismiss() {
            g gVar = this.b;
            if (gVar != null) {
                gVar.dismiss();
                this.b = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void g(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public int h() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void i(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public CharSequence j() {
            return this.d;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public Drawable k() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void m(CharSequence charSequence) {
            this.d = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void n(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void o(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.c.getItemId(i));
            }
            g gVar = this.b;
            if (gVar != null) {
                gVar.dismiss();
                this.b = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void p(int i, int i2) {
            if (this.c != null) {
                g.a aVar = new g.a(AppCompatSpinner.this.getPopupContext());
                CharSequence charSequence = this.d;
                if (charSequence != null) {
                    aVar.o(charSequence);
                }
                aVar.m(this.c, AppCompatSpinner.this.getSelectedItemPosition(), this);
                g a = aVar.a();
                this.b = a;
                ListView c2 = a.c();
                c2.setTextDirection(i);
                c2.setTextAlignment(i2);
                this.b.show();
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public int q() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void r(ListAdapter listAdapter) {
            this.c = listAdapter;
        }
    }

    /* access modifiers changed from: private */
    public static class c implements ListAdapter, SpinnerAdapter {
        private SpinnerAdapter a;
        private ListAdapter b;

        public c(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.b = (ListAdapter) spinnerAdapter;
            }
            if (theme == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                }
            } else if (spinnerAdapter instanceof e0) {
                e0 e0Var = (e0) spinnerAdapter;
                if (e0Var.getDropDownViewTheme() == null) {
                    e0Var.setDropDownViewTheme(theme);
                }
            }
        }

        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return -1;
            }
            return spinnerAdapter.getItemId(i);
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        public int getViewTypeCount() {
            return 1;
        }

        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        public boolean isEmpty() {
            return getCount() == 0;
        }

        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class d extends ListPopupWindow implements e {
        private CharSequence E;
        ListAdapter F;
        private final Rect G = new Rect();
        private int H;

        class a implements AdapterView.OnItemClickListener {
            a(AppCompatSpinner appCompatSpinner) {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AppCompatSpinner.this.setSelection(i);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    d dVar = d.this;
                    AppCompatSpinner.this.performItemClick(view, i, dVar.F.getItemId(i));
                }
                d.this.dismiss();
            }
        }

        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            public void onGlobalLayout() {
                d dVar = d.this;
                if (!dVar.E(AppCompatSpinner.this)) {
                    d.this.dismiss();
                    return;
                }
                d.this.D();
                d.this.show();
            }
        }

        class c implements PopupWindow.OnDismissListener {
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener b;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.b = onGlobalLayoutListener;
            }

            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.b);
                }
            }
        }

        public d(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            s(AppCompatSpinner.this);
            y(true);
            C(0);
            A(new a(AppCompatSpinner.this));
        }

        /* access modifiers changed from: package-private */
        public void D() {
            int i;
            Drawable k = k();
            int i2 = 0;
            if (k != null) {
                k.getPadding(AppCompatSpinner.this.i);
                i2 = p0.b(AppCompatSpinner.this) ? AppCompatSpinner.this.i.right : -AppCompatSpinner.this.i.left;
            } else {
                Rect rect = AppCompatSpinner.this.i;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i3 = appCompatSpinner.h;
            if (i3 == -2) {
                int a2 = appCompatSpinner.a((SpinnerAdapter) this.F, k());
                int i4 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.i;
                int i5 = (i4 - rect2.left) - rect2.right;
                if (a2 > i5) {
                    a2 = i5;
                }
                u(Math.max(a2, (width - paddingLeft) - paddingRight));
            } else if (i3 == -1) {
                u((width - paddingLeft) - paddingRight);
            } else {
                u(i3);
            }
            if (p0.b(AppCompatSpinner.this)) {
                i = (((width - paddingRight) - e()) - this.H) + i2;
            } else {
                i = paddingLeft + this.H + i2;
            }
            i(i);
        }

        /* access modifiers changed from: package-private */
        public boolean E(View view) {
            int i = c3.g;
            return view.isAttachedToWindow() && view.getGlobalVisibleRect(this.G);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public CharSequence j() {
            return this.E;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void m(CharSequence charSequence) {
            this.E = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void o(int i) {
            this.H = i;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void p(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean a2 = a();
            D();
            this.A.setInputMethodMode(2);
            show();
            p pVar = this.d;
            pVar.setChoiceMode(1);
            pVar.setTextDirection(i);
            pVar.setTextAlignment(i2);
            int selectedItemPosition = AppCompatSpinner.this.getSelectedItemPosition();
            p pVar2 = this.d;
            if (a() && pVar2 != null) {
                pVar2.c(false);
                pVar2.setSelection(selectedItemPosition);
                if (pVar2.getChoiceMode() != 0) {
                    pVar2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (!a2 && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                b bVar = new b();
                viewTreeObserver.addOnGlobalLayoutListener(bVar);
                this.A.setOnDismissListener(new c(bVar));
            }
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.e
        public void r(ListAdapter listAdapter) {
            super.r(listAdapter);
            this.F = listAdapter;
        }
    }

    /* access modifiers changed from: package-private */
    public interface e {
        boolean a();

        void dismiss();

        void g(Drawable drawable);

        int h();

        void i(int i);

        CharSequence j();

        Drawable k();

        void m(CharSequence charSequence);

        void n(int i);

        void o(int i);

        void p(int i, int i2);

        int q();

        void r(ListAdapter listAdapter);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.r6);
    }

    /* access modifiers changed from: package-private */
    public int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i3 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i3;
        }
        drawable.getPadding(this.i);
        Rect rect = this.i;
        return i3 + rect.left + rect.right;
    }

    /* access modifiers changed from: package-private */
    public final e b() {
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public void c() {
        this.g.p(getTextDirection(), getTextAlignment());
    }

    @Override // defpackage.b3
    public ColorStateList d() {
        c cVar = this.b;
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.b;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override // defpackage.b3
    public PorterDuff.Mode g() {
        c cVar = this.b;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public int getDropDownHorizontalOffset() {
        e eVar = this.g;
        if (eVar != null) {
            return eVar.h();
        }
        return super.getDropDownHorizontalOffset();
    }

    public int getDropDownVerticalOffset() {
        e eVar = this.g;
        if (eVar != null) {
            return eVar.q();
        }
        return super.getDropDownVerticalOffset();
    }

    public int getDropDownWidth() {
        if (this.g != null) {
            return this.h;
        }
        return super.getDropDownWidth();
    }

    public Drawable getPopupBackground() {
        e eVar = this.g;
        if (eVar != null) {
            return eVar.k();
        }
        return super.getPopupBackground();
    }

    public Context getPopupContext() {
        return this.c;
    }

    public CharSequence getPrompt() {
        e eVar = this.g;
        return eVar != null ? eVar.j() : super.getPrompt();
    }

    @Override // defpackage.b3
    public void h(ColorStateList colorStateList) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.h(colorStateList);
        }
    }

    @Override // defpackage.b3
    public void j(PorterDuff.Mode mode) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.i(mode);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e eVar = this.g;
        if (eVar != null && eVar.a()) {
            this.g.dismiss();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.g != null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.b && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new a());
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        e eVar = this.g;
        savedState.b = eVar != null && eVar.a();
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        r rVar = this.d;
        if (rVar == null || !rVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public boolean performClick() {
        e eVar = this.g;
        if (eVar == null) {
            return super.performClick();
        }
        if (eVar.a()) {
            return true;
        }
        c();
        return true;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.b;
        if (cVar != null) {
            cVar.e();
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        c cVar = this.b;
        if (cVar != null) {
            cVar.f(i2);
        }
    }

    public void setDropDownHorizontalOffset(int i2) {
        e eVar = this.g;
        if (eVar != null) {
            eVar.o(i2);
            this.g.i(i2);
            return;
        }
        super.setDropDownHorizontalOffset(i2);
    }

    public void setDropDownVerticalOffset(int i2) {
        e eVar = this.g;
        if (eVar != null) {
            eVar.n(i2);
        } else {
            super.setDropDownVerticalOffset(i2);
        }
    }

    public void setDropDownWidth(int i2) {
        if (this.g != null) {
            this.h = i2;
        } else {
            super.setDropDownWidth(i2);
        }
    }

    public void setPopupBackgroundDrawable(Drawable drawable) {
        e eVar = this.g;
        if (eVar != null) {
            eVar.g(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(defpackage.d.b(getPopupContext(), i2));
    }

    public void setPrompt(CharSequence charSequence) {
        e eVar = this.g;
        if (eVar != null) {
            eVar.m(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x004f, code lost:
        if (r4 != null) goto L_0x0051;
     */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00ca  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public AppCompatSpinner(android.content.Context r10, android.util.AttributeSet r11, int r12) {
        /*
        // Method dump skipped, instructions count: 206
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f) {
            this.e = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.g != null) {
            Context context = this.c;
            if (context == null) {
                context = getContext();
            }
            this.g.r(new c(spinnerAdapter, context.getTheme()));
        }
    }
}
