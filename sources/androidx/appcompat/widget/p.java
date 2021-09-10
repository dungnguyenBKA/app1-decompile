package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.widget.d;
import java.lang.reflect.Field;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class p extends ListView {
    private final Rect b = new Rect();
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private int g;
    private Field h;
    private a i;
    private boolean j;
    private boolean k;
    private boolean l;
    private d m;
    b n;

    /* access modifiers changed from: private */
    public static class a extends g {
        private boolean c = true;

        a(Drawable drawable) {
            super(drawable);
        }

        /* access modifiers changed from: package-private */
        public void b(boolean z) {
            this.c = z;
        }

        @Override // defpackage.g
        public void draw(Canvas canvas) {
            if (this.c) {
                super.draw(canvas);
            }
        }

        @Override // defpackage.g
        public void setHotspot(float f, float f2) {
            if (this.c) {
                super.setHotspot(f, f2);
            }
        }

        @Override // defpackage.g
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.c) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // defpackage.g
        public boolean setState(int[] iArr) {
            if (this.c) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // defpackage.g
        public boolean setVisible(boolean z, boolean z2) {
            if (this.c) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* access modifiers changed from: private */
    public class b implements Runnable {
        b() {
        }

        public void run() {
            p pVar = p.this;
            pVar.n = null;
            pVar.drawableStateChanged();
        }
    }

    p(Context context, boolean z) {
        super(context, null, R.attr.h8);
        this.k = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.h = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    private void d() {
        Drawable selector = getSelector();
        if (selector != null && this.l && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    public int a(int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i8 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 < count) {
            int itemViewType = adapter.getItemViewType(i9);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(i9, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i12 = layoutParams.height;
            if (i12 > 0) {
                i7 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            } else {
                i7 = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i2, i7);
            view.forceLayout();
            if (i9 > 0) {
                i8 += dividerHeight;
            }
            i8 += view.getMeasuredHeight();
            if (i8 >= i5) {
                return (i6 < 0 || i9 <= i6 || i11 <= 0 || i8 == i5) ? i5 : i11;
            }
            if (i6 >= 0 && i9 >= i6) {
                i11 = i8;
            }
            i9++;
        }
        return i8;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r3 != 3) goto L_0x0012;
     */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x014a  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x014f  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x0166  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean b(android.view.MotionEvent r17, int r18) {
        /*
        // Method dump skipped, instructions count: 366
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.p.b(android.view.MotionEvent, int):boolean");
    }

    /* access modifiers changed from: package-private */
    public void c(boolean z) {
        this.j = z;
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.b.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.b);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        if (this.n == null) {
            super.drawableStateChanged();
            a aVar = this.i;
            if (aVar != null) {
                aVar.b(true);
            }
            d();
        }
    }

    public boolean hasFocus() {
        return this.k || super.hasFocus();
    }

    public boolean hasWindowFocus() {
        return this.k || super.hasWindowFocus();
    }

    public boolean isFocused() {
        return this.k || super.isFocused();
    }

    public boolean isInTouchMode() {
        return (this.k && this.j) || super.isInTouchMode();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        this.n = null;
        super.onDetachedFromWindow();
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.n == null) {
            b bVar = new b();
            this.n = bVar;
            post(bVar);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (!(pointToPosition == -1 || pointToPosition == getSelectedItemPosition())) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                d();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.n;
        if (bVar != null) {
            p pVar = p.this;
            pVar.n = null;
            pVar.removeCallbacks(bVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        a aVar = drawable != null ? new a(drawable) : null;
        this.i = aVar;
        super.setSelector(aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.c = rect.left;
        this.d = rect.top;
        this.e = rect.right;
        this.f = rect.bottom;
    }
}
