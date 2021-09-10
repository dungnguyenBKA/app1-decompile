package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.R$styleable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.http.HttpStatus;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: c1  reason: default package */
public final class c1 {
    public static ColorStateList a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.lang.Object[], java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.content.res.ColorStateList b(android.content.res.Resources r17, org.xmlpull.v1.XmlPullParser r18, android.util.AttributeSet r19, android.content.res.Resources.Theme r20) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c1.b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }

    public static Drawable c(Resources resources, int i, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            return resources.getDrawable(i, theme);
        }
        return resources.getDrawable(i);
    }

    public static Typeface d(Context context, int i, TypedValue typedValue, int i2, j1 j1Var) {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i, typedValue, i2, j1Var, null, true);
    }

    public static void e(Context context, int i, j1 j1Var, Handler handler) {
        if (context.isRestricted()) {
            j1Var.a(-4, null);
        } else {
            m(context, i, new TypedValue(), 0, j1Var, null, false);
        }
    }

    public static boolean f(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        if (!l(xmlPullParser, str)) {
            return z;
        }
        return typedArray.getBoolean(i, z);
    }

    public static d1 g(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        if (l(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return d1.b(typedValue.data);
            }
            d1 e = d1.e(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (e != null) {
                return e;
            }
        }
        return d1.b(i2);
    }

    public static float h(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        if (!l(xmlPullParser, str)) {
            return f;
        }
        return typedArray.getFloat(i, f);
    }

    public static int i(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        if (!l(xmlPullParser, str)) {
            return i2;
        }
        return typedArray.getInt(i, i2);
    }

    public static int j(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        if (!l(xmlPullParser, str)) {
            return i2;
        }
        return typedArray.getResourceId(i, i2);
    }

    public static String k(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!l(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    public static boolean l(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ac  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00b1 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.graphics.Typeface m(android.content.Context r16, int r17, android.util.TypedValue r18, int r19, defpackage.j1 r20, android.os.Handler r21, boolean r22) {
        /*
        // Method dump skipped, instructions count: 254
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c1.m(android.content.Context, int, android.util.TypedValue, int, j1, android.os.Handler, boolean):android.graphics.Typeface");
    }

    public static TypedArray n(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static e1 o(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            xmlPullParser.require(2, null, "font-family");
            if (xmlPullParser.getName().equals("font-family")) {
                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.b);
                String string = obtainAttributes.getString(0);
                String string2 = obtainAttributes.getString(4);
                String string3 = obtainAttributes.getString(5);
                int resourceId = obtainAttributes.getResourceId(1, 0);
                int integer = obtainAttributes.getInteger(2, 1);
                int integer2 = obtainAttributes.getInteger(3, HttpStatus.SC_INTERNAL_SERVER_ERROR);
                obtainAttributes.recycle();
                if (string == null || string2 == null || string3 == null) {
                    ArrayList arrayList = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("font")) {
                                TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.c);
                                int i = 8;
                                if (!obtainAttributes2.hasValue(8)) {
                                    i = 1;
                                }
                                int i2 = obtainAttributes2.getInt(i, HttpStatus.SC_BAD_REQUEST);
                                int i3 = 6;
                                if (!obtainAttributes2.hasValue(6)) {
                                    i3 = 2;
                                }
                                boolean z = 1 == obtainAttributes2.getInt(i3, 0);
                                int i4 = 9;
                                if (!obtainAttributes2.hasValue(9)) {
                                    i4 = 3;
                                }
                                int i5 = 7;
                                if (!obtainAttributes2.hasValue(7)) {
                                    i5 = 4;
                                }
                                String string4 = obtainAttributes2.getString(i5);
                                int i6 = obtainAttributes2.getInt(i4, 0);
                                int i7 = obtainAttributes2.hasValue(5) ? 5 : 0;
                                int resourceId2 = obtainAttributes2.getResourceId(i7, 0);
                                String string5 = obtainAttributes2.getString(i7);
                                obtainAttributes2.recycle();
                                while (xmlPullParser.next() != 3) {
                                    q(xmlPullParser);
                                }
                                arrayList.add(new g1(string5, i2, z, string4, i6, resourceId2));
                            } else {
                                q(xmlPullParser);
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return null;
                    }
                    return new f1((g1[]) arrayList.toArray(new g1[arrayList.size()]));
                }
                while (xmlPullParser.next() != 3) {
                    q(xmlPullParser);
                }
                return new h1(new d2(string, string2, string3, p(resources, resourceId)), integer, integer2);
            }
            q(xmlPullParser);
            return null;
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List<List<byte[]>> p(Resources resources, int i) {
        int i2;
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (Build.VERSION.SDK_INT >= 21) {
                i2 = obtainTypedArray.getType(0);
            } else {
                TypedValue typedValue = new TypedValue();
                obtainTypedArray.getValue(0, typedValue);
                i2 = typedValue.type;
            }
            if (i2 == 1) {
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    int resourceId = obtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        arrayList.add(r(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(r(resources.getStringArray(i)));
            }
            obtainTypedArray.recycle();
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    private static void q(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    private static List<byte[]> r(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
