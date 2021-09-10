package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.e;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import javax.annotation.concurrent.GuardedBy;

public final class DynamiteModule {
    @GuardedBy("DynamiteModule.class")
    private static Boolean b = null;
    @GuardedBy("DynamiteModule.class")
    private static h c = null;
    @GuardedBy("DynamiteModule.class")
    private static j d = null;
    @GuardedBy("DynamiteModule.class")
    private static String e = null;
    @GuardedBy("DynamiteModule.class")
    private static int f = -1;
    private static final ThreadLocal<c> g = new ThreadLocal<>();
    private static final b.AbstractC0050b h = new b();
    public static final b i = new a();
    public static final b j = new c();
    public static final b k = new d();
    public static final b l = new e();
    private final Context a;

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    public static class a extends Exception {
        a(String str, b bVar) {
            super(str);
        }

        a(String str, Throwable th, b bVar) {
            super(str, th);
        }
    }

    public interface b {

        public static class a {
            public int a = 0;
            public int b = 0;
            public int c = 0;
        }

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b$b  reason: collision with other inner class name */
        public interface AbstractC0050b {
            int a(Context context, String str, boolean z);

            int b(Context context, String str);
        }

        a a(Context context, String str, AbstractC0050b bVar);
    }

    /* access modifiers changed from: private */
    public static class c {
        public Cursor a;

        private c() {
        }

        c(b bVar) {
        }
    }

    /* access modifiers changed from: private */
    public static class d implements b.AbstractC0050b {
        private final int a;

        public d(int i) {
            this.a = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.AbstractC0050b
        public final int a(Context context, String str, boolean z) {
            return 0;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.AbstractC0050b
        public final int b(Context context, String str) {
            return this.a;
        }
    }

    private DynamiteModule(Context context) {
        Objects.requireNonNull(context, "null reference");
        this.a = context;
    }

    public static int a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                return declaredField2.getInt(null);
            }
            String valueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 51 + String.valueOf(str).length());
            sb2.append("Module descriptor id '");
            sb2.append(valueOf);
            sb2.append("' didn't match expected id '");
            sb2.append(str);
            sb2.append("'");
            Log.e("DynamiteModule", sb2.toString());
            return 0;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    public static int c(Context context, String str) {
        return f(context, str, false);
    }

    public static DynamiteModule e(Context context, b bVar, String str) {
        Cursor cursor;
        ThreadLocal<c> threadLocal = g;
        c cVar = threadLocal.get();
        c cVar2 = new c(null);
        threadLocal.set(cVar2);
        try {
            b.a a2 = bVar.a(context, str, h);
            int i2 = a2.a;
            int i3 = a2.b;
            StringBuilder sb = new StringBuilder(str.length() + 68 + str.length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(":");
            sb.append(i2);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(":");
            sb.append(i3);
            Log.i("DynamiteModule", sb.toString());
            int i4 = a2.c;
            if (i4 == 0 || ((i4 == -1 && a2.a == 0) || (i4 == 1 && a2.b == 0))) {
                int i5 = a2.a;
                int i6 = a2.b;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i5);
                sb2.append(" and remote version is ");
                sb2.append(i6);
                sb2.append(".");
                throw new a(sb2.toString(), null);
            } else if (i4 == -1) {
                DynamiteModule g2 = g(context, str);
                Cursor cursor2 = cVar2.a;
                if (cursor2 != null) {
                    cursor2.close();
                }
                threadLocal.set(cVar);
                return g2;
            } else if (i4 == 1) {
                try {
                    DynamiteModule h2 = h(context, str, a2.b);
                    Cursor cursor3 = cVar2.a;
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    threadLocal.set(cVar);
                    return h2;
                } catch (a e2) {
                    String valueOf = String.valueOf(e2.getMessage());
                    Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                    int i7 = a2.a;
                    if (i7 == 0 || bVar.a(context, str, new d(i7)).c != -1) {
                        throw new a("Remote load failed. No local fallback found.", e2, null);
                    }
                    return g(context, str);
                }
            } else {
                int i8 = a2.c;
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(i8);
                throw new a(sb3.toString(), null);
            }
        } finally {
            cursor = cVar2.a;
            if (cursor != null) {
                cursor.close();
            }
            g.set(cVar);
        }
    }

    public static int f(Context context, String str, boolean z) {
        ClassLoader classLoader;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = b;
                if (bool == null) {
                    try {
                        Field declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                        synchronized (declaredField.getDeclaringClass()) {
                            ClassLoader classLoader2 = (ClassLoader) declaredField.get(null);
                            if (classLoader2 != null) {
                                if (classLoader2 == ClassLoader.getSystemClassLoader()) {
                                    bool = Boolean.FALSE;
                                } else {
                                    try {
                                        j(classLoader2);
                                    } catch (a unused) {
                                    }
                                    bool = Boolean.TRUE;
                                }
                            } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool = Boolean.FALSE;
                            } else {
                                try {
                                    int m = m(context, str, z);
                                    String str2 = e;
                                    if (str2 != null) {
                                        if (!str2.isEmpty()) {
                                            if (Build.VERSION.SDK_INT >= 29) {
                                                classLoader = new DelegateLastClassLoader(e, ClassLoader.getSystemClassLoader());
                                            } else {
                                                classLoader = new f(e, ClassLoader.getSystemClassLoader());
                                            }
                                            j(classLoader);
                                            declaredField.set(null, classLoader);
                                            b = Boolean.TRUE;
                                            return m;
                                        }
                                    }
                                    return m;
                                } catch (a unused2) {
                                    declaredField.set(null, ClassLoader.getSystemClassLoader());
                                    bool = Boolean.FALSE;
                                    b = bool;
                                    if (!bool.booleanValue()) {
                                        return k(context, str, z);
                                    }
                                    try {
                                        return m(context, str, z);
                                    } catch (a e2) {
                                        String valueOf = String.valueOf(e2.getMessage());
                                        Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
                                        return 0;
                                    }
                                }
                            }
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e3) {
                        String valueOf2 = String.valueOf(e3);
                        StringBuilder sb = new StringBuilder(valueOf2.length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf2);
                        Log.w("DynamiteModule", sb.toString());
                        bool = Boolean.FALSE;
                    }
                }
            }
        } catch (Throwable th) {
            e.a(context, th);
            throw th;
        }
    }

    private static DynamiteModule g(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    private static DynamiteModule h(Context context, String str, int i2) {
        Boolean bool;
        zv zvVar;
        try {
            synchronized (DynamiteModule.class) {
                bool = b;
            }
            if (bool == null) {
                throw new a("Failed to determine which loading route to use.", null);
            } else if (bool.booleanValue()) {
                return l(context, str, i2);
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
                sb.append("Selected remote version of ");
                sb.append(str);
                sb.append(", version >= ");
                sb.append(i2);
                Log.i("DynamiteModule", sb.toString());
                h i3 = i(context);
                if (i3 != null) {
                    if (i3.zzb() >= 2) {
                        zvVar = i3.D(aw.Q(context), str, i2);
                    } else {
                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                        zvVar = i3.k(aw.Q(context), str, i2);
                    }
                    if (aw.P(zvVar) != null) {
                        return new DynamiteModule((Context) aw.P(zvVar));
                    }
                    throw new a("Failed to load remote module.", null);
                }
                throw new a("Failed to create IDynamiteLoader.", null);
            }
        } catch (RemoteException e2) {
            throw new a("Failed to load remote module.", e2, null);
        } catch (a e3) {
            throw e3;
        } catch (Throwable th) {
            e.a(context, th);
            throw new a("Failed to load remote module.", th, null);
        }
    }

    private static h i(Context context) {
        h hVar;
        synchronized (DynamiteModule.class) {
            h hVar2 = c;
            if (hVar2 != null) {
                return hVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    hVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    if (queryLocalInterface instanceof h) {
                        hVar = (h) queryLocalInterface;
                    } else {
                        hVar = new g(iBinder);
                    }
                }
                if (hVar != null) {
                    c = hVar;
                    return hVar;
                }
            } catch (Exception e2) {
                String valueOf = String.valueOf(e2.getMessage());
                Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
            }
            return null;
        }
    }

    @GuardedBy("DynamiteModule.class")
    private static void j(ClassLoader classLoader) {
        j jVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                jVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                if (queryLocalInterface instanceof j) {
                    jVar = (j) queryLocalInterface;
                } else {
                    jVar = new i(iBinder);
                }
            }
            d = jVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new a("Failed to instantiate dynamite loader", e2, null);
        }
    }

    private static int k(Context context, String str, boolean z) {
        h i2 = i(context);
        if (i2 == null) {
            return 0;
        }
        try {
            if (i2.zzb() >= 2) {
                return i2.w(aw.Q(context), str, z);
            }
            Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
            return i2.B(aw.Q(context), str, z);
        } catch (RemoteException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    private static DynamiteModule l(Context context, String str, int i2) {
        j jVar;
        Boolean valueOf;
        zv zvVar;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i2);
        Log.i("DynamiteModule", sb.toString());
        synchronized (DynamiteModule.class) {
            jVar = d;
        }
        if (jVar != null) {
            c cVar = g.get();
            if (cVar == null || cVar.a == null) {
                throw new a("No result cursor", null);
            }
            Context applicationContext = context.getApplicationContext();
            Cursor cursor = cVar.a;
            aw.Q(null);
            synchronized (DynamiteModule.class) {
                valueOf = Boolean.valueOf(f >= 2);
            }
            if (valueOf.booleanValue()) {
                zvVar = jVar.g(aw.Q(applicationContext), str, i2, aw.Q(cursor));
            } else {
                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                zvVar = jVar.f(aw.Q(applicationContext), str, i2, aw.Q(cursor));
            }
            Context context2 = (Context) aw.P(zvVar);
            if (context2 != null) {
                return new DynamiteModule(context2);
            }
            throw new a("Failed to get module context", null);
        }
        throw new a("DynamiteLoaderV2 was not cached.", null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x007f  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00a3 A[Catch:{ all -> 0x00ac }] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00a4 A[Catch:{ all -> 0x00ac }] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00b0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int m(android.content.Context r8, java.lang.String r9, boolean r10) {
        /*
        // Method dump skipped, instructions count: 180
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m(android.content.Context, java.lang.String, boolean):int");
    }

    public final Context b() {
        return this.a;
    }

    public final IBinder d(String str) {
        try {
            return (IBinder) this.a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            String valueOf = String.valueOf(str);
            throw new a(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e2, null);
        }
    }
}
