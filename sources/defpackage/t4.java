package defpackage;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import defpackage.l1;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.http.HttpStatus;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: t4  reason: default package */
public class t4 {
    /* JADX DEBUG: Multi-variable search result rejected for r15v16, resolved type: android.animation.AnimatorSet */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x0300  */
    /* JADX WARNING: Removed duplicated region for block: B:162:0x0314  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.animation.Animator a(android.content.Context r21, android.content.res.Resources r22, android.content.res.Resources.Theme r23, org.xmlpull.v1.XmlPullParser r24, android.util.AttributeSet r25, android.animation.AnimatorSet r26, int r27, float r28) {
        /*
        // Method dump skipped, instructions count: 890
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t4.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    private static Interpolator b(Context context, XmlPullParser xmlPullParser) {
        Interpolator w4Var;
        int depth = xmlPullParser.getDepth();
        Interpolator interpolator = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
                    String name = xmlPullParser.getName();
                    if (name.equals("linearInterpolator")) {
                        interpolator = new LinearInterpolator();
                    } else {
                        if (name.equals("accelerateInterpolator")) {
                            w4Var = new AccelerateInterpolator(context, asAttributeSet);
                        } else if (name.equals("decelerateInterpolator")) {
                            w4Var = new DecelerateInterpolator(context, asAttributeSet);
                        } else if (name.equals("accelerateDecelerateInterpolator")) {
                            interpolator = new AccelerateDecelerateInterpolator();
                        } else if (name.equals("cycleInterpolator")) {
                            w4Var = new CycleInterpolator(context, asAttributeSet);
                        } else if (name.equals("anticipateInterpolator")) {
                            w4Var = new AnticipateInterpolator(context, asAttributeSet);
                        } else if (name.equals("overshootInterpolator")) {
                            w4Var = new OvershootInterpolator(context, asAttributeSet);
                        } else if (name.equals("anticipateOvershootInterpolator")) {
                            w4Var = new AnticipateOvershootInterpolator(context, asAttributeSet);
                        } else if (name.equals("bounceInterpolator")) {
                            interpolator = new BounceInterpolator();
                        } else if (name.equals("pathInterpolator")) {
                            w4Var = new w4(context, asAttributeSet, xmlPullParser);
                        } else {
                            StringBuilder q = ic.q("Unknown interpolator name: ");
                            q.append(xmlPullParser.getName());
                            throw new RuntimeException(q.toString());
                        }
                        interpolator = w4Var;
                    }
                }
            }
        }
        return interpolator;
    }

    private static Keyframe c(Keyframe keyframe, float f) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f);
        }
        return Keyframe.ofObject(f);
    }

    private static PropertyValuesHolder d(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder propertyValuesHolder;
        int i4;
        int i5;
        int i6;
        float f;
        float f2;
        float f3;
        PropertyValuesHolder propertyValuesHolder2;
        TypedValue peekValue = typedArray.peekValue(i2);
        boolean z = peekValue != null;
        int i7 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        boolean z2 = peekValue2 != null;
        int i8 = z2 ? peekValue2.type : 0;
        if (i == 4) {
            i = ((!z || !e(i7)) && (!z2 || !e(i8))) ? 0 : 3;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolder3 = null;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            l1.a[] e = l1.e(string);
            l1.a[] e2 = l1.e(string2);
            if (e == null && e2 == null) {
                return null;
            }
            if (e != null) {
                u4 u4Var = new u4();
                if (e2 == null) {
                    propertyValuesHolder2 = PropertyValuesHolder.ofObject(str, u4Var, e);
                } else if (l1.a(e, e2)) {
                    propertyValuesHolder2 = PropertyValuesHolder.ofObject(str, u4Var, e, e2);
                } else {
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
                return propertyValuesHolder2;
            } else if (e2 == null) {
                return null;
            } else {
                return PropertyValuesHolder.ofObject(str, new u4(), e2);
            }
        } else {
            v4 a = i == 3 ? v4.a() : null;
            if (z3) {
                if (z) {
                    if (i7 == 5) {
                        f2 = typedArray.getDimension(i2, 0.0f);
                    } else {
                        f2 = typedArray.getFloat(i2, 0.0f);
                    }
                    if (z2) {
                        if (i8 == 5) {
                            f3 = typedArray.getDimension(i3, 0.0f);
                        } else {
                            f3 = typedArray.getFloat(i3, 0.0f);
                        }
                        propertyValuesHolder = PropertyValuesHolder.ofFloat(str, f2, f3);
                    } else {
                        propertyValuesHolder = PropertyValuesHolder.ofFloat(str, f2);
                    }
                } else {
                    if (i8 == 5) {
                        f = typedArray.getDimension(i3, 0.0f);
                    } else {
                        f = typedArray.getFloat(i3, 0.0f);
                    }
                    propertyValuesHolder = PropertyValuesHolder.ofFloat(str, f);
                }
            } else if (z) {
                if (i7 == 5) {
                    i5 = (int) typedArray.getDimension(i2, 0.0f);
                } else if (e(i7)) {
                    i5 = typedArray.getColor(i2, 0);
                } else {
                    i5 = typedArray.getInt(i2, 0);
                }
                if (z2) {
                    if (i8 == 5) {
                        i6 = (int) typedArray.getDimension(i3, 0.0f);
                    } else if (e(i8)) {
                        i6 = typedArray.getColor(i3, 0);
                    } else {
                        i6 = typedArray.getInt(i3, 0);
                    }
                    propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5, i6);
                } else {
                    propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5);
                }
            } else {
                if (z2) {
                    if (i8 == 5) {
                        i4 = (int) typedArray.getDimension(i3, 0.0f);
                    } else if (e(i8)) {
                        i4 = typedArray.getColor(i3, 0);
                    } else {
                        i4 = typedArray.getInt(i3, 0);
                    }
                    propertyValuesHolder = PropertyValuesHolder.ofInt(str, i4);
                }
                if (propertyValuesHolder3 == null && a != null) {
                    propertyValuesHolder3.setEvaluator(a);
                    return propertyValuesHolder3;
                }
            }
            propertyValuesHolder3 = propertyValuesHolder;
            return propertyValuesHolder3 == null ? propertyValuesHolder3 : propertyValuesHolder3;
        }
    }

    private static boolean e(int i) {
        return i >= 28 && i <= 31;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0073  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.animation.Animator f(android.content.Context r10, int r11) {
        /*
        // Method dump skipped, instructions count: 119
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t4.f(android.content.Context, int):android.animation.Animator");
    }

    private static ValueAnimator g(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) {
        int i;
        int i2;
        int i3;
        int i4;
        TypedArray typedArray;
        ValueAnimator valueAnimator2;
        TypedArray typedArray2;
        ValueAnimator valueAnimator3;
        PropertyValuesHolder propertyValuesHolder;
        TypedArray n = c1.n(resources, theme, attributeSet, r4.g);
        TypedArray n2 = c1.n(resources, theme, attributeSet, r4.k);
        ValueAnimator valueAnimator4 = valueAnimator == null ? new ValueAnimator() : valueAnimator;
        boolean l = c1.l(xmlPullParser, "duration");
        int i5 = HttpStatus.SC_MULTIPLE_CHOICES;
        if (l) {
            i5 = n.getInt(1, HttpStatus.SC_MULTIPLE_CHOICES);
        }
        long j = (long) i5;
        int i6 = 0;
        if (!c1.l(xmlPullParser, "startOffset")) {
            i = 0;
        } else {
            i = n.getInt(2, 0);
        }
        long j2 = (long) i;
        if (!c1.l(xmlPullParser, "valueType")) {
            i2 = 4;
        } else {
            i2 = n.getInt(7, 4);
        }
        if (c1.l(xmlPullParser, "valueFrom") && c1.l(xmlPullParser, "valueTo")) {
            if (i2 == 4) {
                TypedValue peekValue = n.peekValue(5);
                boolean z = peekValue != null;
                int i7 = z ? peekValue.type : 0;
                TypedValue peekValue2 = n.peekValue(6);
                boolean z2 = peekValue2 != null;
                i2 = ((!z || !e(i7)) && (!z2 || !e(z2 ? peekValue2.type : 0))) ? 0 : 3;
            }
            PropertyValuesHolder d = d(n, i2, 5, 6, "");
            if (d != null) {
                valueAnimator4.setValues(d);
            }
        }
        valueAnimator4.setDuration(j);
        valueAnimator4.setStartDelay(j2);
        if (!c1.l(xmlPullParser, "repeatCount")) {
            i3 = 0;
        } else {
            i3 = n.getInt(3, 0);
        }
        valueAnimator4.setRepeatCount(i3);
        if (!c1.l(xmlPullParser, "repeatMode")) {
            i4 = 1;
        } else {
            i4 = n.getInt(4, 1);
        }
        valueAnimator4.setRepeatMode(i4);
        if (n2 != null) {
            ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator4;
            String k = c1.k(n2, xmlPullParser, "pathData", 1);
            if (k != null) {
                String k2 = c1.k(n2, xmlPullParser, "propertyXName", 2);
                String k3 = c1.k(n2, xmlPullParser, "propertyYName", 3);
                if (k2 == null && k3 == null) {
                    throw new InflateException(n2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path f2 = l1.f(k);
                float f3 = 0.5f * f;
                PathMeasure pathMeasure = new PathMeasure(f2, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f4 = 0.0f;
                do {
                    f4 += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(f4));
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(f2, false);
                int min = Math.min(100, ((int) (f4 / f3)) + 1);
                float[] fArr = new float[min];
                float[] fArr2 = new float[min];
                float[] fArr3 = new float[2];
                float f5 = f4 / ((float) (min - 1));
                valueAnimator2 = valueAnimator4;
                typedArray = n;
                int i8 = 0;
                float f6 = 0.0f;
                while (true) {
                    propertyValuesHolder = null;
                    if (i6 >= min) {
                        break;
                    }
                    pathMeasure2.getPosTan(f6 - ((Float) arrayList.get(i8)).floatValue(), fArr3, null);
                    fArr[i6] = fArr3[0];
                    fArr2[i6] = fArr3[1];
                    f6 += f5;
                    int i9 = i8 + 1;
                    if (i9 < arrayList.size() && f6 > ((Float) arrayList.get(i9)).floatValue()) {
                        pathMeasure2.nextContour();
                        i8 = i9;
                    }
                    i6++;
                    min = min;
                }
                PropertyValuesHolder ofFloat = k2 != null ? PropertyValuesHolder.ofFloat(k2, fArr) : null;
                if (k3 != null) {
                    propertyValuesHolder = PropertyValuesHolder.ofFloat(k3, fArr2);
                }
                if (ofFloat == null) {
                    i6 = 0;
                    objectAnimator.setValues(propertyValuesHolder);
                } else {
                    i6 = 0;
                    if (propertyValuesHolder == null) {
                        objectAnimator.setValues(ofFloat);
                    } else {
                        objectAnimator.setValues(ofFloat, propertyValuesHolder);
                    }
                }
            } else {
                valueAnimator2 = valueAnimator4;
                typedArray = n;
                objectAnimator.setPropertyName(c1.k(n2, xmlPullParser, "propertyName", 0));
            }
        } else {
            valueAnimator2 = valueAnimator4;
            typedArray = n;
        }
        if (!c1.l(xmlPullParser, "interpolator")) {
            typedArray2 = typedArray;
        } else {
            typedArray2 = typedArray;
            i6 = typedArray2.getResourceId(i6, i6);
        }
        if (i6 > 0) {
            valueAnimator3 = valueAnimator2;
            valueAnimator3.setInterpolator(h(context, i6));
        } else {
            valueAnimator3 = valueAnimator2;
        }
        typedArray2.recycle();
        if (n2 != null) {
            n2.recycle();
        }
        return valueAnimator3;
    }

    public static Interpolator h(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return AnimationUtils.loadInterpolator(context, i);
        }
        XmlResourceParser xmlResourceParser = null;
        if (i == 17563663) {
            try {
                return new w3();
            } catch (XmlPullParserException e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            } catch (IOException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            } catch (Throwable th) {
                if (0 != 0) {
                    xmlResourceParser.close();
                }
                throw th;
            }
        } else if (i == 17563661) {
            return new x3();
        } else {
            if (i == 17563662) {
                return new y3();
            }
            XmlResourceParser animation = context.getResources().getAnimation(i);
            context.getResources();
            context.getTheme();
            Interpolator b = b(context, animation);
            animation.close();
            return b;
        }
    }
}
