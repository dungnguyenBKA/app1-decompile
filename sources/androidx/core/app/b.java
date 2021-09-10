package androidx.core.app;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.StatFs;
import android.support.v4.media.MediaBrowserCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import androidx.fragment.app.m;
import com.bumptech.glide.c;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.AllowStorageAccessFragment;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.ErrGeneralFragment;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.ErrInfoCodeFragment;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.o;
import com.camerasideas.collagemaker.activity.fragment.utils.FragmentFactory$AbsViewClickWrapper;
import com.camerasideas.collagemaker.activity.w0;
import com.google.android.gms.common.h;
import com.vungle.warren.error.VungleException;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import photoeditor.cutout.backgrounderaser.R;

public final class b {
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x007f, code lost:
        if (r12.y < 0.0f) goto L_0x0081;
     */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static float A(android.graphics.PointF r12) {
        /*
        // Method dump skipped, instructions count: 188
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.b.A(android.graphics.PointF):float");
    }

    public static void A0(Context context, boolean z) {
        SharedPreferences.Editor edit = W(context).edit();
        if (z) {
            edit.putBoolean("photoeditor.layout.collagemaker.vip.yearly", true).putBoolean("SubscribePro", true).apply();
        } else {
            edit.putBoolean("photoeditor.layout.collagemaker.vip.yearly", false).apply();
        }
    }

    @SuppressLint({"NewApi"})
    public static long B(StatFs statFs) {
        try {
            return statFs.getAvailableBlocksLong();
        } catch (Throwable th) {
            th.printStackTrace();
            return (long) statFs.getAvailableBlocks();
        }
    }

    @TargetApi(VungleException.NO_SPACE_TO_INIT)
    public static void B0(Activity activity) {
        activity.getWindow().addFlags(1024);
        activity.getWindow().getDecorView().setSystemUiVisibility(1028);
    }

    public static long C(String str) {
        if (!bm.e(str)) {
            im.b("SaveFolderDoesNotExist:" + str);
            return 0;
        }
        try {
            StatFs statFs = new StatFs(str);
            return E(statFs) * B(statFs);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            im.b("FailedToGetAvailableSpaceExist:" + str);
            return 0;
        }
    }

    public static void C0(Context context, String str, String str2) {
        SharedPreferences.Editor edit = W(context).edit();
        edit.putString(str + "_price", str2).apply();
    }

    public static int D(AppCompatActivity appCompatActivity) {
        g supportFragmentManager = appCompatActivity.getSupportFragmentManager();
        int d = supportFragmentManager.d();
        em.h("FragmentFactory", "COUNT=" + d);
        return supportFragmentManager.d();
    }

    public static AllowStorageAccessFragment D0(AppCompatActivity appCompatActivity) {
        AllowStorageAccessFragment allowStorageAccessFragment = (AllowStorageAccessFragment) ((sm) Fragment.Y(appCompatActivity, AllowStorageAccessFragment.class.getName(), null));
        allowStorageAccessFragment.x1(appCompatActivity.getSupportFragmentManager());
        return allowStorageAccessFragment;
    }

    @SuppressLint({"NewApi"})
    public static long E(StatFs statFs) {
        try {
            return statFs.getBlockSizeLong();
        } catch (Throwable th) {
            th.printStackTrace();
            return (long) statFs.getBlockSize();
        }
    }

    public static androidx.fragment.app.b E0(AppCompatActivity appCompatActivity) {
        o oVar = new o();
        try {
            oVar.t1(appCompatActivity.getSupportFragmentManager(), o.class.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return oVar;
    }

    public static String F(Map<String, jq> map) {
        if (map == null) {
            return null;
        }
        jq jqVar = map.get(c2.o(CollageMakerApplication.b()));
        if ((jqVar == null || TextUtils.isEmpty(jqVar.b)) && (jqVar = map.get("en")) == null && map.size() > 0) {
            jqVar = map.entrySet().iterator().next().getValue();
        }
        if (jqVar != null) {
            return jqVar.b;
        }
        return null;
    }

    public static void F0(g gVar, Class cls, boolean z) {
        Fragment c = gVar.c(cls.getName());
        if (c != null) {
            m a = gVar.a();
            if (z) {
                a.m(c);
            } else {
                a.i(c);
            }
            try {
                a.g();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }

    public static int G(Context context, int i, int i2) {
        TypedValue v0 = v0(context, i);
        return v0 != null ? v0.data : i2;
    }

    public static void G0(AppCompatActivity appCompatActivity, String str, int i) {
        s0(appCompatActivity, ErrGeneralFragment.class);
        Bundle bundle = new Bundle();
        bundle.putString("error report description", str);
        bundle.putInt("error info code", i);
        ((sm) Fragment.Y(appCompatActivity, ErrGeneralFragment.class.getName(), bundle)).x1(appCompatActivity.getSupportFragmentManager());
    }

    public static int H(View view, int i) {
        return x0(view.getContext(), i, view.getClass().getCanonicalName());
    }

    public static void H0(AppCompatActivity appCompatActivity, String str, int i, FragmentFactory$AbsViewClickWrapper fragmentFactory$AbsViewClickWrapper) {
        s0(appCompatActivity, ErrInfoCodeFragment.class);
        Bundle bundle = new Bundle();
        bundle.putString("error report description", str);
        bundle.putInt("error info code", i);
        bundle.putParcelable("AbsViewClickWrapper", fragmentFactory$AbsViewClickWrapper);
        ((sm) Fragment.Y(appCompatActivity, ErrInfoCodeFragment.class.getName(), bundle)).x1(appCompatActivity.getSupportFragmentManager());
    }

    public static int I(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        return cursor.getColumnIndexOrThrow("`" + str + "`");
    }

    public static void I0(String str) {
        StringBuilder r = ic.r(str, " MaxMemory:");
        r.append((((float) Runtime.getRuntime().maxMemory()) / 1024.0f) / 1024.0f);
        r.append(",TotalMemory:");
        r.append((((float) Runtime.getRuntime().totalMemory()) / 1024.0f) / 1024.0f);
        r.append(",FreeMemory:");
        r.append((((float) Runtime.getRuntime().freeMemory()) / 1024.0f) / 1024.0f);
        em.h("", r.toString());
    }

    public static float J(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (float) Math.sqrt((double) ((f6 * f6) + (f5 * f5)));
    }

    public static double J0(double d) {
        if (d == 0.0d) {
            return 0.0d;
        }
        return 194.0d + ((d - 30.0d) * 3.62d);
    }

    public static Fragment K(AppCompatActivity appCompatActivity, Class cls) {
        Fragment c;
        if (appCompatActivity == null || (c = appCompatActivity.getSupportFragmentManager().c(cls.getName())) == null) {
            return null;
        }
        return c;
    }

    public static void K0(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static String L() {
        return Math.random() < 0.5d ? "ca-app-pub-3940256099942544/1033173712" : "ca-app-pub-3940256099942544/8691691433";
    }

    /* JADX WARNING: Removed duplicated region for block: B:61:0x00ae A[SYNTHETIC, Splitter:B:61:0x00ae] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00b6 A[Catch:{ IOException -> 0x00b2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00bb A[Catch:{ IOException -> 0x00b2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x00c6 A[SYNTHETIC, Splitter:B:73:0x00c6] */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x00ce A[Catch:{ IOException -> 0x00ca }] */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x00d3 A[Catch:{ IOException -> 0x00ca }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean L0(java.io.File r8, java.io.File r9) {
        /*
        // Method dump skipped, instructions count: 221
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.b.L0(java.io.File, java.io.File):boolean");
    }

    public static final View M(ViewGroup viewGroup, int i) {
        gg0.f(viewGroup, "$this$getItemView");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        gg0.b(inflate, "LayoutInflater.from(this…layoutResId, this, false)");
        return inflate;
    }

    public static void M0(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        W(CollageMakerApplication.b()).unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public static String N() {
        return Math.random() < 0.5d ? "ca-app-pub-3940256099942544/2247696110" : "ca-app-pub-3940256099942544/1044960115";
    }

    public static PorterDuffColorFilter N0(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }

    public static String O(String str) {
        int lastIndexOf;
        return (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(".")) < 0) ? str : str.substring(lastIndexOf + 1);
    }

    public static w0 O0(Context context) {
        return (w0) c.p(context);
    }

    public static Intent P(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String R = R(activity, activity.getComponentName());
            if (R == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, R);
            try {
                if (R(activity, componentName) == null) {
                    return Intent.makeMainActivity(componentName);
                }
                return new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + R + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static <T> Class<T> P0(Class<T> cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        return cls == Void.TYPE ? Void.class : cls;
    }

    public static Intent Q(Context context, ComponentName componentName) {
        String R = R(context, componentName);
        if (R == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), R);
        if (R(context, componentName2) == null) {
            return Intent.makeMainActivity(componentName2);
        }
        return new Intent().setComponent(componentName2);
    }

    public static <T> void Q0(StringBuilder sb, T[] tArr) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(tArr[i].toString());
        }
    }

    public static String R(Context context, ComponentName componentName) {
        String string;
        PackageManager packageManager = context.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        int i2 = 640;
        if (i >= 29) {
            i2 = 269222528;
        } else if (i >= 24) {
            i2 = 787072;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i2);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static void R0(StringBuilder sb, HashMap<String, String> hashMap) {
        sb.append("{");
        boolean z = true;
        for (String str : hashMap.keySet()) {
            if (!z) {
                sb.append(",");
            } else {
                z = false;
            }
            String str2 = hashMap.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
        }
        sb.append("}");
    }

    public static String S(Context context, String str, String str2) {
        SharedPreferences W = W(context);
        return W.getString(str + "_price", str2);
    }

    public static String S0(Context context) {
        try {
            return context.getResources().getResourcePackageName(R.string.b6);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }

    public static Uri T(Context context, int i) {
        Resources resources = context.getResources();
        try {
            return Uri.parse("android.resource://" + resources.getResourcePackageName(i) + "/" + resources.getResourceTypeName(i) + "/" + resources.getResourceEntryName(i));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void T0(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }

    @TargetApi(13)
    public static int U(Context context) {
        Point point = new Point();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getSize(point);
        return point.y;
    }

    public static <T> T U0(Bundle bundle, String str, Class<T> cls, T t) {
        T t2 = (T) bundle.get(str);
        if (t2 == null) {
            return t;
        }
        if (cls.isAssignableFrom(t2.getClass())) {
            return t2;
        }
        throw new IllegalStateException(String.format("Invalid conditional user property field type. '%s' expected [%s] but was [%s]", str, cls.getCanonicalName(), t2.getClass().getCanonicalName()));
    }

    @TargetApi(13)
    public static int V(Context context) {
        Point point = new Point();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getSize(point);
        return point.x;
    }

    public static final String V0(String str, Resources resources, String str2) {
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier != 0) {
            try {
                return resources.getString(identifier);
            } catch (Resources.NotFoundException unused) {
            }
        }
        return null;
    }

    public static SharedPreferences W(Context context) {
        try {
            return context.getSharedPreferences("iab", 0);
        } catch (NullPointerException e) {
            e.printStackTrace();
            return CollageMakerApplication.b().getSharedPreferences("iab", 0);
        }
    }

    public static String X(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.getBuffer().toString();
    }

    public static String Y(int i) {
        switch (i) {
            case -1:
                return "SUCCESS_CACHE";
            case 0:
                return "SUCCESS";
            case 1:
            case 9:
            case 11:
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
            default:
                return ic.C(32, "unknown status code: ", i);
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 10:
                return "DEVELOPER_ERROR";
            case 13:
                return "ERROR";
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return "INTERRUPTED";
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                return "TIMEOUT";
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                return "CANCELED";
            case 17:
                return "API_NOT_CONNECTED";
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                return "DEAD_CLIENT";
            case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                return "REMOTE_EXCEPTION";
            case 20:
                return "CONNECTION_SUSPENDED_DURING_CALL";
        }
    }

    public static int Z(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        if (i <= 480) {
            return 96;
        }
        if (i <= 768) {
            return 160;
        }
        if (i < 1080) {
            return HttpStatus.SC_OK;
        }
        return 240;
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean a0(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 8192);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        if (packageInfo != null) {
            return true;
        }
        Log.e("AppUtils", "No:" + str);
        return false;
    }

    public static void b(String str, Exception exc) {
        int i = k90.a;
        Log.e("OMIDLIB", str, exc);
    }

    public static String b0(int i) {
        String hexString = Integer.toHexString(i & 16777215);
        while (hexString.length() < 6) {
            hexString = ic.i("0", hexString);
        }
        return ic.i("#", hexString);
    }

    public static void c(g gVar, Fragment fragment, Class cls, int i, boolean z) {
        m a = gVar.a();
        a.k(i, fragment, cls.getName());
        if (z) {
            a.e(null);
        }
        try {
            a.g();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public static boolean c0(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT < 21) {
                NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
                if (allNetworkInfo == null) {
                    return false;
                }
                for (int i = 0; i < allNetworkInfo.length; i++) {
                    if (allNetworkInfo[i] == null || !allNetworkInfo[i].isConnected()) {
                    }
                }
                return false;
            }
            Network[] allNetworks = connectivityManager.getAllNetworks();
            if (allNetworks == null) {
                return false;
            }
            for (Network network : allNetworks) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
                if (networkInfo == null || !networkInfo.isConnected()) {
                }
            }
            return false;
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean d(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        if (bundle == null) {
            if (bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1) {
                return true;
            }
            return false;
        } else if (bundle2 == null) {
            if (bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1) {
                return true;
            }
            return false;
        } else if (bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1)) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean d0(Context context) {
        return W(context).getBoolean("SubscribePro", false);
    }

    public static void e(Object obj, StringBuilder sb) {
        int lastIndexOf;
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(lastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static boolean e0(Context context, int i) {
        if (!yv.a(context).h(i, "com.google.android.gms")) {
            return false;
        }
        try {
            return h.a(context).b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException unused) {
            Log.isLoggable("UidVerifier", 3);
            return false;
        }
    }

    public static float f(PointF pointF, PointF pointF2) {
        return (float) Math.toDegrees(Math.atan2((double) (pointF.y - pointF2.y), (double) (pointF.x - pointF2.x)));
    }

    public static boolean f0(Context context) {
        NetworkInfo[] allNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (!(connectivityManager == null || (allNetworkInfo = connectivityManager.getAllNetworkInfo()) == null || allNetworkInfo.length <= 0)) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean g(Context context) {
        if (W(context).getBoolean("photoeditor.layout.collagemaker.removeads", false) || d0(context)) {
            return false;
        }
        return true;
    }

    public static int g0(int i, int i2, float f) {
        return k1.b(k1.d(i2, Math.round(((float) Color.alpha(i2)) * f)), i);
    }

    public static void h(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean h0(ViewParent viewParent, View view, float f, float f2, boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedFling(view, f, f2, z);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
                return false;
            }
        } else if (viewParent instanceof w2) {
            return ((w2) viewParent).onNestedFling(view, f, f2, z);
        } else {
            return false;
        }
    }

    public static void i(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean i0(ViewParent viewParent, View view, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedPreFling(view, f, f2);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
                return false;
            }
        } else if (viewParent instanceof w2) {
            return ((w2) viewParent).onNestedPreFling(view, f, f2);
        } else {
            return false;
        }
    }

    public static int j(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    public static void j0(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof u2) {
            ((u2) viewParent).q(view, i, i2, iArr, i3);
        } else if (i3 != 0) {
        } else {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedPreScroll(view, i, i2, iArr);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
                }
            } else if (viewParent instanceof w2) {
                ((w2) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }
    }

    public static int k(Context context, String str) {
        return m(context, str, Binder.getCallingPid(), Binder.getCallingUid(), Binder.getCallingPid() == Process.myPid() ? context.getPackageName() : null);
    }

    public static void k0(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof v2) {
            ((v2) viewParent).g(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof u2) {
            ((u2) viewParent).m(view, i, i2, i3, i4, i5);
        } else if (i5 != 0) {
        } else {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScroll(view, i, i2, i3, i4);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
                }
            } else if (viewParent instanceof w2) {
                ((w2) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }
    }

    public static <T> T l(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void l0(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }

    public static int m(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        int i3 = Build.VERSION.SDK_INT;
        String permissionToOp = i3 >= 23 ? AppOpsManager.permissionToOp(str) : null;
        if (permissionToOp == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        if ((i3 >= 23 ? ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, str2) : 1) != 0) {
            return -2;
        }
        return 0;
    }

    public static p60 m0(a90 a90) {
        boolean k0 = a90.k0();
        a90.A0(true);
        try {
            p60 b = x70.b(a90);
            a90.A0(k0);
            return b;
        } catch (StackOverflowError e) {
            throw new t60("Failed parsing JSON source: " + a90 + " to Json", e);
        } catch (OutOfMemoryError e2) {
            throw new t60("Failed parsing JSON source: " + a90 + " to Json", e2);
        } catch (Throwable th) {
            a90.A0(k0);
            throw th;
        }
    }

    public static int n(Context context, String str) {
        return m(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    public static p60 n0(String str) {
        try {
            a90 a90 = new a90(new StringReader(str));
            p60 m0 = m0(a90);
            Objects.requireNonNull(m0);
            if (!(m0 instanceof r60)) {
                if (a90.x0() != b90.END_DOCUMENT) {
                    throw new x60("Did not consume the entire document.");
                }
            }
            return m0;
        } catch (d90 e) {
            throw new x60(e);
        } catch (IOException e2) {
            throw new q60(e2);
        } catch (NumberFormatException e3) {
            throw new x60(e3);
        }
    }

    public static int o(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static boolean o0(String str) {
        return !str.equals(HttpGet.METHOD_NAME) && !str.equals(HttpHead.METHOD_NAME);
    }

    public static float p(PointF pointF, PointF pointF2) {
        float f = pointF.x - pointF2.x;
        float f2 = pointF.y - pointF2.y;
        double d = (double) f;
        double sqrt = Math.sqrt((double) ((f2 * f2) + (f * f)));
        Double.isNaN(d);
        Double.isNaN(d);
        double d2 = d / sqrt;
        if (d2 > 1.0d) {
            d2 = 1.0d;
        } else if (d2 < -1.0d) {
            d2 = -1.0d;
        }
        float asin = (float) ((Math.asin(d2) * 180.0d) / 3.141592653589793d);
        if (f >= 0.0f && f2 <= 0.0f) {
            return 360.0f - asin;
        }
        if (f <= 0.0f && f2 <= 0.0f) {
            return -asin;
        }
        if ((f > 0.0f || f2 < 0.0f) && (f < 0.0f || f2 < 0.0f)) {
            return 0.0f;
        }
        return asin + 180.0f;
    }

    public static void p0(AnimatorSet animatorSet, List<Animator> list) {
        int size = list.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = list.get(i);
            j = Math.max(j, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.setDuration(j);
        list.add(0, ofInt);
        animatorSet.playTogether(list);
    }

    public static float q(float f, float f2, float f3) {
        return Math.max(f, Math.min(f2, f3));
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|(3:3|4|(1:6)(7:39|15|25|26|27|28|29))|38|8|9|10|11|12|13|(1:(0))) */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:16|17|(0)|34|35|37) */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0055, code lost:
        if (r3 != null) goto L_0x0057;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0040 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x005a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:34:0x0063 */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0060 A[SYNTHETIC, Splitter:B:32:0x0060] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String q0(java.io.File r6, java.lang.String r7) {
        /*
        // Method dump skipped, instructions count: 105
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.b.q0(java.io.File, java.lang.String):java.lang.String");
    }

    public static <T> boolean r(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (com.google.android.gms.common.internal.m.a(tArr[i], t)) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            return true;
        }
        return false;
    }

    public static void r0(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        W(CollageMakerApplication.b()).registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public static Fragment s(AppCompatActivity appCompatActivity, Class cls, Bundle bundle, int i, boolean z, boolean z2) {
        Fragment Y = Fragment.Y(appCompatActivity, cls.getName(), null);
        if (Y != null) {
            Y.c1(bundle);
            m a = appCompatActivity.getSupportFragmentManager().a();
            if (z2 || Build.VERSION.SDK_INT < 21) {
                a.l(R.anim.a_, R.anim.a9);
            }
            a.k(i, Y, cls.getName());
            if (z) {
                a.e(null);
            }
            try {
                a.g();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
        return Y;
    }

    public static void s0(AppCompatActivity appCompatActivity, Class cls) {
        g supportFragmentManager;
        Fragment c;
        if (appCompatActivity != null && (c = (supportFragmentManager = appCompatActivity.getSupportFragmentManager()).c(cls.getName())) != null) {
            m a = supportFragmentManager.a();
            a.j(c);
            try {
                supportFragmentManager.g();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (Throwable th) {
                a.f();
                throw th;
            }
            a.f();
        }
    }

    public static final FrameLayout.LayoutParams t() {
        return new FrameLayout.LayoutParams(-1, -2);
    }

    public static void t0(AppCompatActivity appCompatActivity, Class cls) {
        g supportFragmentManager;
        Fragment c;
        if (appCompatActivity != null && (c = (supportFragmentManager = appCompatActivity.getSupportFragmentManager()).c(cls.getName())) != null) {
            m a = supportFragmentManager.a();
            a.j(c);
            try {
                supportFragmentManager.g();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (Throwable th) {
                a.g();
                throw th;
            }
            a.g();
        }
    }

    public static Object u(String str) {
        if (str.length() == 0) {
            return null;
        }
        try {
            byte[] bArr = new byte[(str.length() / 2)];
            for (int i = 0; i < str.length(); i += 2) {
                int i2 = i / 2;
                bArr[i2] = (byte) ((str.charAt(i) - 'a') << 4);
                bArr[i2] = (byte) ((str.charAt(i + 1) - 'a') + bArr[i2]);
            }
            return new ObjectInputStream(new ByteArrayInputStream(bArr)).readObject();
        } catch (Exception e) {
            StringBuilder q = ic.q("Deserialization error: ");
            q.append(e.getMessage());
            throw new IOException(q.toString());
        }
    }

    public static File u0(Activity activity, Uri uri) {
        File file = new File(cm.f(uri));
        dq.a(activity);
        String str = dq.e;
        rq.b(activity);
        File createTempFile = File.createTempFile("BackgroundEraser_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + "_", ".org.jpg", new File(str));
        StringBuilder q = ic.q("createNewFile:");
        q.append(createTempFile.getAbsolutePath());
        em.h("AppUtils", q.toString());
        file.renameTo(createTempFile);
        return createTempFile;
    }

    public static int v(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    public static TypedValue v0(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static final int w(float f, Resources resources) {
        return (int) TypedValue.applyDimension(1, f, resources.getDisplayMetrics());
    }

    public static boolean w0(Context context, int i, boolean z) {
        TypedValue v0 = v0(context, i);
        if (v0 == null || v0.type != 18) {
            return z;
        }
        return v0.data != 0;
    }

    public static String x(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        int visibility = view.getVisibility();
        if (visibility != 0) {
            return visibility != 4 ? visibility != 8 ? "viewNotVisible" : "viewGone" : "viewInvisible";
        }
        if (view.getAlpha() == 0.0f) {
            return "viewAlphaZero";
        }
        return null;
    }

    public static int x0(Context context, int i, String str) {
        TypedValue v0 = v0(context, i);
        if (v0 != null) {
            return v0.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    public static boolean y(int i) {
        return (i & 16) == 16;
    }

    public static int y0(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static double z(double d) {
        if (d == 0.0d) {
            return 0.0d;
        }
        return 25.0d + ((d - 8.0d) * 3.0d);
    }

    public static int z0(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }
}
