package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.transition.v;
import java.util.Map;

public class ChangeImageTransform extends Transition {
    private static final TypeEvaluator<Matrix> A = new a();
    private static final Property<ImageView, Matrix> B = new b(Matrix.class, "animatedTransform");
    private static final String[] z = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};

    static class a implements TypeEvaluator<Matrix> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
        @Override // android.animation.TypeEvaluator
        public /* bridge */ /* synthetic */ Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    }

    static class b extends Property<ImageView, Matrix> {
        b(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public /* bridge */ /* synthetic */ Matrix get(ImageView imageView) {
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(ImageView imageView, Matrix matrix) {
            j.a(imageView, matrix);
        }
    }

    /* access modifiers changed from: package-private */
    public static /* synthetic */ class c {
        static final /* synthetic */ int[] a;

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        static {
            /*
                android.widget.ImageView$ScaleType[] r0 = android.widget.ImageView.ScaleType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                androidx.transition.ChangeImageTransform.c.a = r0
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.FIT_XY     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = androidx.transition.ChangeImageTransform.c.a     // Catch:{ NoSuchFieldError -> 0x001d }
                android.widget.ImageView$ScaleType r1 = android.widget.ImageView.ScaleType.CENTER_CROP     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeImageTransform.c.<clinit>():void");
        }
    }

    public ChangeImageTransform() {
    }

    private void Q(w wVar) {
        Matrix matrix;
        View view = wVar.b;
        if ((view instanceof ImageView) && view.getVisibility() == 0) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() != null) {
                Map<String, Object> map = wVar.a;
                map.put("android:changeImageTransform:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
                Drawable drawable = imageView.getDrawable();
                if (drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0) {
                    int i = c.a[imageView.getScaleType().ordinal()];
                    if (i == 1) {
                        Drawable drawable2 = imageView.getDrawable();
                        Matrix matrix2 = new Matrix();
                        matrix2.postScale(((float) imageView.getWidth()) / ((float) drawable2.getIntrinsicWidth()), ((float) imageView.getHeight()) / ((float) drawable2.getIntrinsicHeight()));
                        matrix = matrix2;
                    } else if (i == 2) {
                        Drawable drawable3 = imageView.getDrawable();
                        int intrinsicWidth = drawable3.getIntrinsicWidth();
                        float width = (float) imageView.getWidth();
                        float f = (float) intrinsicWidth;
                        int intrinsicHeight = drawable3.getIntrinsicHeight();
                        float height = (float) imageView.getHeight();
                        float f2 = (float) intrinsicHeight;
                        float max = Math.max(width / f, height / f2);
                        int round = Math.round((width - (f * max)) / 2.0f);
                        int round2 = Math.round((height - (f2 * max)) / 2.0f);
                        matrix = new Matrix();
                        matrix.postScale(max, max);
                        matrix.postTranslate((float) round, (float) round2);
                    }
                    map.put("android:changeImageTransform:matrix", matrix);
                }
                matrix = new Matrix(imageView.getImageMatrix());
                map.put("android:changeImageTransform:matrix", matrix);
            }
        }
    }

    @Override // androidx.transition.Transition
    public void d(w wVar) {
        Q(wVar);
    }

    @Override // androidx.transition.Transition
    public void g(w wVar) {
        Q(wVar);
    }

    @Override // androidx.transition.Transition
    public Animator k(ViewGroup viewGroup, w wVar, w wVar2) {
        if (wVar == null || wVar2 == null) {
            return null;
        }
        Rect rect = (Rect) wVar.a.get("android:changeImageTransform:bounds");
        Rect rect2 = (Rect) wVar2.a.get("android:changeImageTransform:bounds");
        if (rect == null || rect2 == null) {
            return null;
        }
        Matrix matrix = (Matrix) wVar.a.get("android:changeImageTransform:matrix");
        Matrix matrix2 = (Matrix) wVar2.a.get("android:changeImageTransform:matrix");
        boolean z2 = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
        if (rect.equals(rect2) && z2) {
            return null;
        }
        ImageView imageView = (ImageView) wVar2.b;
        Drawable drawable = imageView.getDrawable();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            Property<ImageView, Matrix> property = B;
            TypeEvaluator<Matrix> typeEvaluator = A;
            Matrix matrix3 = k.a;
            return ObjectAnimator.ofObject(imageView, property, typeEvaluator, matrix3, matrix3);
        }
        if (matrix == null) {
            matrix = k.a;
        }
        if (matrix2 == null) {
            matrix2 = k.a;
        }
        Property<ImageView, Matrix> property2 = B;
        property2.set(imageView, matrix);
        return ObjectAnimator.ofObject(imageView, property2, new v.a(), matrix, matrix2);
    }

    @Override // androidx.transition.Transition
    public String[] x() {
        return z;
    }

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
