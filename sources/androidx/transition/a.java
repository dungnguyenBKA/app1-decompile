package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.animation.TypeConverter;
import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import photoeditor.cutout.backgrounderaser.R;

class a {
    private static Method a;
    private static Method b;
    private static boolean c;

    static Animator a(View view, w wVar, int i, int i2, float f, float f2, float f3, float f4, TimeInterpolator timeInterpolator, Transition transition) {
        float f5;
        float f6;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) wVar.b.getTag(R.id.so);
        if (iArr != null) {
            f5 = ((float) (iArr[0] - i)) + translationX;
            f6 = ((float) (iArr[1] - i2)) + translationY;
        } else {
            f5 = f;
            f6 = f2;
        }
        int round = Math.round(f5 - translationX) + i;
        int round2 = Math.round(f6 - translationY) + i2;
        view.setTranslationX(f5);
        view.setTranslationY(f6);
        if (f5 == f3 && f6 == f4) {
            return null;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, f5, f3), PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, f6, f4));
        y yVar = new y(view, wVar.b, round, round2, translationX, translationY);
        transition.a(yVar);
        ofPropertyValuesHolder.addListener(yVar);
        ofPropertyValuesHolder.addPauseListener(yVar);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    static void b(Canvas canvas, boolean z) {
        Method method;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            if (i >= 29) {
                if (z) {
                    canvas.enableZ();
                } else {
                    canvas.disableZ();
                }
            } else if (i != 28) {
                if (!c) {
                    try {
                        Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                        a = declaredMethod;
                        declaredMethod.setAccessible(true);
                        Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                        b = declaredMethod2;
                        declaredMethod2.setAccessible(true);
                    } catch (NoSuchMethodException unused) {
                    }
                    c = true;
                }
                if (z) {
                    try {
                        Method method2 = a;
                        if (method2 != null) {
                            method2.invoke(canvas, new Object[0]);
                        }
                    } catch (IllegalAccessException unused2) {
                        return;
                    } catch (InvocationTargetException e) {
                        throw new RuntimeException(e.getCause());
                    }
                }
                if (!z && (method = b) != null) {
                    method.invoke(canvas, new Object[0]);
                }
            } else {
                throw new IllegalStateException("This method doesn't work on Pie!");
            }
        }
    }

    static <T> ObjectAnimator c(T t, Property<T, PointF> property, Path path) {
        if (Build.VERSION.SDK_INT >= 21) {
            return ObjectAnimator.ofObject(t, property, (TypeConverter) null, path);
        }
        return ObjectAnimator.ofFloat(t, new l(property, path), 0.0f, 1.0f);
    }

    static PropertyValuesHolder d(Property<?, PointF> property, Path path) {
        if (Build.VERSION.SDK_INT >= 21) {
            return PropertyValuesHolder.ofObject(property, (TypeConverter) null, path);
        }
        return PropertyValuesHolder.ofFloat(new l(property, path), 0.0f, 1.0f);
    }
}
