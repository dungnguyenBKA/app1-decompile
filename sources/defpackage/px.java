package defpackage;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import java.util.ArrayList;
import java.util.List;

/* renamed from: px  reason: default package */
public class px {
    private final e0<String, qx> a = new e0<>();
    private final e0<String, PropertyValuesHolder[]> b = new e0<>();

    public static px a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return b(context, resourceId);
    }

    public static px b(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return c(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return c(arrayList);
        } catch (Exception e) {
            StringBuilder q = ic.q("Can't load animation resource ID #0x");
            q.append(Integer.toHexString(i));
            Log.w("MotionSpec", q.toString(), e);
            return null;
        }
    }

    private static px c(List<Animator> list) {
        px pxVar = new px();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Animator animator = list.get(i);
            if (animator instanceof ObjectAnimator) {
                ObjectAnimator objectAnimator = (ObjectAnimator) animator;
                pxVar.b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
                pxVar.a.put(objectAnimator.getPropertyName(), qx.b(objectAnimator));
            } else {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
        }
        return pxVar;
    }

    public <T> ObjectAnimator d(String str, T t, Property<T, ?> property) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, e(str));
        ofPropertyValuesHolder.setProperty(property);
        f(str).a(ofPropertyValuesHolder);
        return ofPropertyValuesHolder;
    }

    public PropertyValuesHolder[] e(String str) {
        if (h(str)) {
            PropertyValuesHolder[] orDefault = this.b.getOrDefault(str, null);
            PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[orDefault.length];
            for (int i = 0; i < orDefault.length; i++) {
                propertyValuesHolderArr[i] = orDefault[i].clone();
            }
            return propertyValuesHolderArr;
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof px)) {
            return false;
        }
        return this.a.equals(((px) obj).a);
    }

    public qx f(String str) {
        if (this.a.getOrDefault(str, null) != null) {
            return this.a.getOrDefault(str, null);
        }
        throw new IllegalArgumentException();
    }

    public long g() {
        int size = this.a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            qx l = this.a.l(i);
            j = Math.max(j, l.d() + l.c());
        }
        return j;
    }

    public boolean h(String str) {
        return this.b.getOrDefault(str, null) != null;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public void i(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.b.put(str, propertyValuesHolderArr);
    }

    public String toString() {
        return '\n' + px.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.a + "}\n";
    }
}
