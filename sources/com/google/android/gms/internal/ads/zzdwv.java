package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public final class zzdwv {
    @NullableDecl
    private static final Object zzhxk;
    @NullableDecl
    private static final Method zzhxl;
    @NullableDecl
    private static final Method zzhxm;

    static {
        Method method;
        Object zzazd = zzazd();
        zzhxk = zzazd;
        Method method2 = null;
        if (zzazd == null) {
            method = null;
        } else {
            method = zza("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        zzhxl = method;
        if (zzazd != null) {
            method2 = zzaze();
        }
        zzhxm = method2;
    }

    public static String zza(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        zzeja.zza(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @NullableDecl
    private static Object zzazd() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    @NullableDecl
    private static Method zzaze() {
        try {
            Method zza = zza("getStackTraceDepth", Throwable.class);
            if (zza == null) {
                return null;
            }
            zza.invoke(zzazd(), new Throwable());
            return zza;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    public static void zzi(Throwable th) {
        zzdwl.checkNotNull(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    @Deprecated
    public static RuntimeException zzj(Throwable th) {
        zzi(th);
        throw new RuntimeException(th);
    }

    @NullableDecl
    private static Method zza(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }
}
