package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import android.os.Debug;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;

/* renamed from: sz  reason: default package */
public class sz {
    private static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static long b = -1;

    /* access modifiers changed from: package-private */
    /* renamed from: sz$a */
    public enum a {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;
        
        private static final Map<String, a> l;

        static {
            a aVar;
            a aVar2;
            a aVar3;
            a aVar4;
            HashMap hashMap = new HashMap(4);
            l = hashMap;
            hashMap.put("armeabi-v7a", aVar3);
            hashMap.put("armeabi", aVar2);
            hashMap.put("arm64-v8a", aVar4);
            hashMap.put("x86", aVar);
        }

        static a a() {
            a aVar = UNKNOWN;
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                az.f().h("Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return aVar;
            }
            a aVar2 = l.get(str.toLowerCase(Locale.US));
            return aVar2 == null ? aVar : aVar2;
        }
    }

    public static void a(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                az.f().e(str, e);
            }
        }
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    static long c(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * ((long) i);
    }

    public static String d(File file, String str) {
        Throwable th;
        BufferedReader bufferedReader;
        Exception e;
        String str2 = null;
        str2 = null;
        BufferedReader bufferedReader2 = null;
        str2 = null;
        if (file.exists()) {
            try {
                bufferedReader = new BufferedReader(new FileReader(file), 1024);
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        String[] split = Pattern.compile("\\s*:\\s*").split(readLine, 2);
                        if (split.length > 1 && split[0].equals(str)) {
                            str2 = split[1];
                            break;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            az.f().e("Error parsing " + file, e);
                            a(bufferedReader, "Failed to close system file reader.");
                            return str2;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader2 = bufferedReader;
                            a(bufferedReader2, "Failed to close system file reader.");
                            throw th;
                        }
                    }
                }
            } catch (Exception e3) {
                e = e3;
                bufferedReader = null;
                az.f().e("Error parsing " + file, e);
                a(bufferedReader, "Failed to close system file reader.");
                return str2;
            } catch (Throwable th3) {
                th = th3;
                a(bufferedReader2, "Failed to close system file reader.");
                throw th;
            }
            a(bufferedReader, "Failed to close system file reader.");
        }
        return str2;
    }

    public static boolean e(Context context, String str, boolean z) {
        Resources resources;
        if (!(context == null || (resources = context.getResources()) == null)) {
            int h = h(context, str, "bool");
            if (h > 0) {
                return resources.getBoolean(h);
            }
            int h2 = h(context, str, "string");
            if (h2 > 0) {
                return Boolean.parseBoolean(context.getString(h2));
            }
        }
        return z;
    }

    public static int f(Context context) {
        boolean z = true;
        int i = l(context) ? 1 : 0;
        if (m(context)) {
            i |= 2;
        }
        if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger()) {
            z = false;
        }
        return z ? i | 4 : i;
    }

    public static String g(Context context) {
        int h = h(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        if (h == 0) {
            h = h(context, "com.crashlytics.android.build_id", "string");
        }
        if (h != 0) {
            return context.getResources().getString(h);
        }
        return null;
    }

    public static int h(Context context, String str, String str2) {
        String str3;
        Resources resources = context.getResources();
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                str3 = context.getResources().getResourcePackageName(i);
                if ("android".equals(str3)) {
                    str3 = context.getPackageName();
                }
            } catch (Resources.NotFoundException unused) {
                str3 = context.getPackageName();
            }
        } else {
            str3 = context.getPackageName();
        }
        return resources.getIdentifier(str, str2, str3);
    }

    public static SharedPreferences i(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    public static synchronized long j() {
        long j;
        synchronized (sz.class) {
            if (b == -1) {
                long j2 = 0;
                String d = d(new File("/proc/meminfo"), "MemTotal");
                if (!TextUtils.isEmpty(d)) {
                    String upperCase = d.toUpperCase(Locale.US);
                    try {
                        if (upperCase.endsWith("KB")) {
                            j2 = c(upperCase, "KB", 1024);
                        } else if (upperCase.endsWith("MB")) {
                            j2 = c(upperCase, "MB", 1048576);
                        } else if (upperCase.endsWith("GB")) {
                            j2 = c(upperCase, "GB", 1073741824);
                        } else {
                            az f = az.f();
                            f.i("Unexpected meminfo format while computing RAM: " + upperCase);
                        }
                    } catch (NumberFormatException e) {
                        az f2 = az.f();
                        f2.e("Unexpected meminfo format while computing RAM: " + upperCase, e);
                    }
                }
                b = j2;
            }
            j = b;
        }
        return j;
    }

    public static String k(byte[] bArr) {
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    public static boolean l(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        String str = Build.PRODUCT;
        return "sdk".equals(str) || "google_sdk".equals(str) || string == null;
    }

    public static boolean m(Context context) {
        boolean l = l(context);
        String str = Build.TAGS;
        if ((!l && str != null && str.contains("test-keys")) || new File("/system/app/Superuser.apk").exists()) {
            return true;
        }
        File file = new File("/system/xbin/su");
        if (l || !file.exists()) {
            return false;
        }
        return true;
    }

    public static String n(String str) {
        byte[] bytes = str.getBytes();
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(bytes);
            return k(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            az f = az.f();
            f.e("Could not create hashing algorithm: " + "SHA-1" + ", returning empty string.", e);
            return "";
        }
    }
}
