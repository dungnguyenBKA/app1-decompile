package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.android.billingclient.api.g;
import com.camerasideas.collagemaker.appdata.f;
import com.google.android.gms.internal.ads.zzazk;
import defpackage.ub0;
import defpackage.zv;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: ic  reason: default package */
/* compiled from: outline */
public class ic {
    public static zv A(Parcel parcel) {
        zv O = zv.a.O(parcel.readStrongBinder());
        parcel.recycle();
        return O;
    }

    public static Float B(Float f, float f2) {
        return Float.valueOf(f.floatValue() + f2);
    }

    public static String C(int i, String str, int i2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        return sb.toString();
    }

    public static float a(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    public static int b(int i, int i2, int i3, int i4) {
        return ((i * i2) / i3) + i4;
    }

    public static String c(int i, String str, int i2, String str2, int i3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i3);
        return sb.toString();
    }

    public static String d(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String e(int i, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static String f(String str, int i) {
        return str + i;
    }

    public static String g(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String h(String str, String str2) {
        return str + str2;
    }

    public static String i(String str, String str2) {
        return str + str2;
    }

    public static String j(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String k(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    public static String l(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static int m(String str, int i) {
        return String.valueOf(str).length() + i;
    }

    public static String n(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static String o(XmlPullParser xmlPullParser, StringBuilder sb, String str) {
        sb.append(xmlPullParser.getPositionDescription());
        sb.append(str);
        return sb.toString();
    }

    public static StringBuilder p(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb;
    }

    public static StringBuilder q(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder r(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static void s(Context context, String str, boolean z) {
        f.g(context).edit().putBoolean(str, z).apply();
    }

    public static void t(String str, ub0.a aVar, Activity activity) {
        aVar.d(activity, new kb0(str));
    }

    public static void u(StringBuilder sb, char c, String str, String str2) {
        sb.append(c);
        sb.append(str);
        Log.e(str2, sb.toString());
    }

    public static void v(StringBuilder sb, String str, char c, String str2) {
        sb.append(str);
        sb.append(c);
        sb.append(str2);
    }

    public static int w(String str, int i, int i2) {
        return (str.hashCode() + i) * i2;
    }

    public static RemoteException x(String str, Throwable th) {
        zzazk.zzc(str, th);
        return new RemoteException();
    }

    public static g y(int i, String str) {
        g.a c = g.c();
        c.c(i);
        c.b(str);
        return c.a();
    }

    public static mn z(Context context, int i, mn mnVar, int i2, int i3, boolean z) {
        mnVar.i(c2.l(context, i));
        return new mn(i2, i3, z);
    }
}
