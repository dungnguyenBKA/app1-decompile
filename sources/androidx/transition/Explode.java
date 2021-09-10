package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import photoeditor.cutout.backgrounderaser.R;

public class Explode extends Visibility {
    private static final TimeInterpolator C = new DecelerateInterpolator();
    private static final TimeInterpolator D = new AccelerateInterpolator();
    private int[] B;

    public Explode() {
        this.B = new int[2];
        this.t = new c();
    }

    private void Q(w wVar) {
        View view = wVar.b;
        view.getLocationOnScreen(this.B);
        int[] iArr = this.B;
        int i = iArr[0];
        int i2 = iArr[1];
        wVar.a.put("android:explode:screenBounds", new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    private void Y(View view, Rect rect, int[] iArr) {
        int i;
        int i2;
        view.getLocationOnScreen(this.B);
        int[] iArr2 = this.B;
        int i3 = iArr2[0];
        int i4 = iArr2[1];
        Rect n = n();
        if (n == null) {
            i2 = Math.round(view.getTranslationX()) + (view.getWidth() / 2) + i3;
            i = Math.round(view.getTranslationY()) + (view.getHeight() / 2) + i4;
        } else {
            i2 = n.centerX();
            i = n.centerY();
        }
        float centerX = (float) (rect.centerX() - i2);
        float centerY = (float) (rect.centerY() - i);
        if (centerX == 0.0f && centerY == 0.0f) {
            centerX = ((float) (Math.random() * 2.0d)) - 1.0f;
            centerY = ((float) (Math.random() * 2.0d)) - 1.0f;
        }
        float sqrt = (float) Math.sqrt((double) ((centerY * centerY) + (centerX * centerX)));
        int i5 = i2 - i3;
        int i6 = i - i4;
        float max = (float) Math.max(i5, view.getWidth() - i5);
        float max2 = (float) Math.max(i6, view.getHeight() - i6);
        float sqrt2 = (float) Math.sqrt((double) ((max2 * max2) + (max * max)));
        iArr[0] = Math.round((centerX / sqrt) * sqrt2);
        iArr[1] = Math.round(sqrt2 * (centerY / sqrt));
    }

    @Override // androidx.transition.Visibility
    public Animator T(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        Rect rect = (Rect) wVar2.a.get("android:explode:screenBounds");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        Y(viewGroup, rect, this.B);
        int[] iArr = this.B;
        return a.a(view, wVar2, rect.left, rect.top, translationX + ((float) iArr[0]), translationY + ((float) iArr[1]), translationX, translationY, C, this);
    }

    @Override // androidx.transition.Visibility
    public Animator V(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        float f;
        float f2;
        Rect rect = (Rect) wVar.a.get("android:explode:screenBounds");
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) wVar.b.getTag(R.id.so);
        if (iArr != null) {
            f2 = ((float) (iArr[0] - rect.left)) + translationX;
            f = ((float) (iArr[1] - rect.top)) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f2 = translationX;
            f = translationY;
        }
        Y(viewGroup, rect, this.B);
        int[] iArr2 = this.B;
        return a.a(view, wVar, i, i2, translationX, translationY, f2 + ((float) iArr2[0]), f + ((float) iArr2[1]), D, this);
    }

    @Override // androidx.transition.Transition, androidx.transition.Visibility
    public void d(w wVar) {
        super.d(wVar);
        Q(wVar);
    }

    @Override // androidx.transition.Transition, androidx.transition.Visibility
    public void g(w wVar) {
        super.g(wVar);
        Q(wVar);
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.B = new int[2];
        this.t = new c();
    }
}
