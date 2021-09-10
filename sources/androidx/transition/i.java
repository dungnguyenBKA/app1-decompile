package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
@SuppressLint({"ViewConstructor"})
public class i extends ViewGroup implements f {
    public static final /* synthetic */ int h = 0;
    ViewGroup b;
    View c;
    final View d;
    int e;
    private Matrix f;
    private final ViewTreeObserver.OnPreDrawListener g = new a();

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        public boolean onPreDraw() {
            View view;
            i iVar = i.this;
            int i = c3.g;
            iVar.postInvalidateOnAnimation();
            i iVar2 = i.this;
            ViewGroup viewGroup = iVar2.b;
            if (viewGroup == null || (view = iVar2.c) == null) {
                return true;
            }
            viewGroup.endViewTransition(view);
            i.this.b.postInvalidateOnAnimation();
            i iVar3 = i.this;
            iVar3.b = null;
            iVar3.c = null;
            return true;
        }
    }

    i(View view) {
        super(view.getContext());
        this.d = view;
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    static i b(View view, ViewGroup viewGroup, Matrix matrix) {
        g gVar;
        if (view.getParent() instanceof ViewGroup) {
            int i = g.d;
            g gVar2 = (g) viewGroup.getTag(R.id.hw);
            i iVar = (i) view.getTag(R.id.hv);
            int i2 = 0;
            if (!(iVar == null || (gVar = (g) iVar.getParent()) == gVar2)) {
                i2 = iVar.e;
                gVar.removeView(iVar);
                iVar = null;
            }
            if (iVar == null) {
                if (matrix == null) {
                    matrix = new Matrix();
                    ViewGroup viewGroup2 = (ViewGroup) view.getParent();
                    matrix.reset();
                    b0.h(viewGroup2, matrix);
                    matrix.preTranslate((float) (-viewGroup2.getScrollX()), (float) (-viewGroup2.getScrollY()));
                    b0.i(viewGroup, matrix);
                }
                iVar = new i(view);
                iVar.f = matrix;
                if (gVar2 == null) {
                    gVar2 = new g(viewGroup);
                } else {
                    gVar2.c();
                }
                c(viewGroup, gVar2);
                c(viewGroup, iVar);
                gVar2.a(iVar);
                iVar.e = i2;
            } else if (matrix != null) {
                iVar.f = matrix;
            }
            iVar.e++;
            return iVar;
        }
        throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
    }

    static void c(View view, View view2) {
        b0.e(view2, view2.getLeft(), view2.getTop(), view.getWidth() + view2.getLeft(), view.getHeight() + view2.getTop());
    }

    static i d(View view) {
        return (i) view.getTag(R.id.hv);
    }

    @Override // androidx.transition.f
    public void a(ViewGroup viewGroup, View view) {
        this.b = viewGroup;
        this.c = view;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.d.setTag(R.id.hv, this);
        this.d.getViewTreeObserver().addOnPreDrawListener(this.g);
        b0.g(this.d, 4);
        if (this.d.getParent() != null) {
            ((View) this.d.getParent()).invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        this.d.getViewTreeObserver().removeOnPreDrawListener(this.g);
        b0.g(this.d, 0);
        this.d.setTag(R.id.hv, null);
        if (this.d.getParent() != null) {
            ((View) this.d.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        a.b(canvas, true);
        canvas.setMatrix(this.f);
        b0.g(this.d, 0);
        this.d.invalidate();
        b0.g(this.d, 4);
        drawChild(canvas, this.d, getDrawingTime());
        a.b(canvas, false);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // androidx.transition.f
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (d(this.d) == this) {
            b0.g(this.d, i == 0 ? 4 : 0);
        }
    }
}
