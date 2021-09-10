package androidx.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.ZipException;

public final class a {
    private static final Set<File> a = new HashSet();
    private static final boolean b;

    /* access modifiers changed from: private */
    /* renamed from: androidx.multidex.a$a  reason: collision with other inner class name */
    public static final class C0016a {
        static d a(RandomAccessFile randomAccessFile) {
            long length = randomAccessFile.length() - 22;
            long j = 0;
            if (length >= 0) {
                long j2 = length - PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
                if (j2 >= 0) {
                    j = j2;
                }
                int reverseBytes = Integer.reverseBytes(101010256);
                do {
                    randomAccessFile.seek(length);
                    if (randomAccessFile.readInt() == reverseBytes) {
                        randomAccessFile.skipBytes(2);
                        randomAccessFile.skipBytes(2);
                        randomAccessFile.skipBytes(2);
                        randomAccessFile.skipBytes(2);
                        d dVar = new d();
                        dVar.b = ((long) Integer.reverseBytes(randomAccessFile.readInt())) & 4294967295L;
                        dVar.a = ((long) Integer.reverseBytes(randomAccessFile.readInt())) & 4294967295L;
                        return dVar;
                    }
                    length--;
                } while (length >= j);
                throw new ZipException("End Of Central Directory signature not found");
            }
            StringBuilder q = ic.q("File too short to be a zip file: ");
            q.append(randomAccessFile.length());
            throw new ZipException(q.toString());
        }
    }

    static {
        String property = System.getProperty("java.vm.version");
        boolean z = false;
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, ".");
            String str = null;
            String nextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            if (stringTokenizer.hasMoreTokens()) {
                str = stringTokenizer.nextToken();
            }
            if (!(nextToken == null || str == null)) {
                try {
                    int parseInt = Integer.parseInt(nextToken);
                    int parseInt2 = Integer.parseInt(str);
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder r = ic.r("VM with version ", property);
        r.append(z ? " has multidex support" : " does not have multidex support");
        Log.i("MultiDex", r.toString());
        b = z;
    }

    static void a(Object obj, String str, Object[] objArr) {
        Field d = d(obj, str);
        Object[] objArr2 = (Object[]) d.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        d.set(obj, objArr3);
    }

    private static void b(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            StringBuilder q = ic.q("Clearing old secondary dex dir (");
            q.append(file.getPath());
            q.append(").");
            Log.i("MultiDex", q.toString());
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                StringBuilder q2 = ic.q("Failed to list secondary dex dir content (");
                q2.append(file.getPath());
                q2.append(").");
                Log.w("MultiDex", q2.toString());
                return;
            }
            for (File file2 : listFiles) {
                StringBuilder q3 = ic.q("Trying to delete old file ");
                q3.append(file2.getPath());
                q3.append(" of size ");
                q3.append(file2.length());
                Log.i("MultiDex", q3.toString());
                if (!file2.delete()) {
                    StringBuilder q4 = ic.q("Failed to delete old file ");
                    q4.append(file2.getPath());
                    Log.w("MultiDex", q4.toString());
                } else {
                    StringBuilder q5 = ic.q("Deleted old file ");
                    q5.append(file2.getPath());
                    Log.i("MultiDex", q5.toString());
                }
            }
            if (!file.delete()) {
                StringBuilder q6 = ic.q("Failed to delete secondary dex dir ");
                q6.append(file.getPath());
                Log.w("MultiDex", q6.toString());
                return;
            }
            StringBuilder q7 = ic.q("Deleted old secondary dex dir ");
            q7.append(file.getPath());
            Log.i("MultiDex", q7.toString());
        }
    }

    private static void c(Context context, File file, File file2, String str, String str2, boolean z) {
        ClassLoader classLoader;
        Set<File> set = a;
        synchronized (set) {
            if (!set.contains(file)) {
                set.add(file);
                int i = Build.VERSION.SDK_INT;
                if (i > 20) {
                    Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + i + ": SDK version higher than " + 20 + " should be backed by " + "runtime with built-in multidex capabilty but it's not the " + "case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
                }
                IOException e = null;
                try {
                    classLoader = context.getClassLoader();
                    if (!(classLoader instanceof BaseDexClassLoader)) {
                        Log.e("MultiDex", "Context class loader is null or not dex-capable. Must be running in test mode. Skip patching.");
                        classLoader = null;
                    }
                } catch (RuntimeException e2) {
                    Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", e2);
                }
                if (classLoader != null) {
                    try {
                        b(context);
                    } catch (Throwable th) {
                        Log.w("MultiDex", "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", th);
                    }
                    File file3 = new File(file2, "code_cache");
                    try {
                        g(file3);
                    } catch (IOException unused) {
                        file3 = new File(context.getFilesDir(), "code_cache");
                        g(file3);
                    }
                    File file4 = new File(file3, str);
                    g(file4);
                    c cVar = new c(file, file4);
                    try {
                        try {
                            f(classLoader, file4, cVar.V(context, str2, false));
                        } catch (IOException e3) {
                            if (z) {
                                Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", e3);
                                f(classLoader, file4, cVar.V(context, str2, true));
                            } else {
                                throw e3;
                            }
                        }
                        try {
                        } catch (IOException e4) {
                            e = e4;
                        }
                        if (e != null) {
                            throw e;
                        }
                    } finally {
                        try {
                            cVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
        }
    }

    private static Field d(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    public static void e(Context context) {
        ApplicationInfo applicationInfo;
        Log.i("MultiDex", "Installing application");
        if (b) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
            return;
        }
        try {
            applicationInfo = context.getApplicationInfo();
        } catch (RuntimeException e) {
            try {
                Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
                applicationInfo = null;
            } catch (Exception e2) {
                Log.e("MultiDex", "MultiDex installation failure", e2);
                StringBuilder q = ic.q("MultiDex installation failed (");
                q.append(e2.getMessage());
                q.append(").");
                throw new RuntimeException(q.toString());
            }
        }
        if (applicationInfo == null) {
            Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
            return;
        }
        c(context, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir), "secondary-dexes", "", true);
        Log.i("MultiDex", "install done");
    }

    private static void f(ClassLoader classLoader, File file, List<? extends File> list) {
        IOException[] iOExceptionArr;
        if (!list.isEmpty()) {
            Object obj = d(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList(list);
            Class<?>[] clsArr = {ArrayList.class, File.class, ArrayList.class};
            for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
                try {
                    Method declaredMethod = cls.getDeclaredMethod("makeDexElements", clsArr);
                    if (!declaredMethod.isAccessible()) {
                        declaredMethod.setAccessible(true);
                    }
                    a(obj, "dexElements", (Object[]) declaredMethod.invoke(obj, arrayList2, file, arrayList));
                    if (arrayList.size() > 0) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                        }
                        Field d = d(obj, "dexElementsSuppressedExceptions");
                        IOException[] iOExceptionArr2 = (IOException[]) d.get(obj);
                        if (iOExceptionArr2 == null) {
                            iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                        } else {
                            IOException[] iOExceptionArr3 = new IOException[(arrayList.size() + iOExceptionArr2.length)];
                            arrayList.toArray(iOExceptionArr3);
                            System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                            iOExceptionArr = iOExceptionArr3;
                        }
                        d.set(obj, iOExceptionArr);
                        IOException iOException = new IOException("I/O exception during makeDexElement");
                        iOException.initCause((Throwable) arrayList.get(0));
                        throw iOException;
                    }
                    return;
                } catch (NoSuchMethodException unused) {
                }
            }
            throw new NoSuchMethodException("Method " + "makeDexElements" + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
        }
    }

    private static void g(File file) {
        file.mkdir();
        if (!file.isDirectory()) {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                StringBuilder q = ic.q("Failed to create dir ");
                q.append(file.getPath());
                q.append(". Parent file is null.");
                Log.e("MultiDex", q.toString());
            } else {
                StringBuilder q2 = ic.q("Failed to create dir ");
                q2.append(file.getPath());
                q2.append(". parent file is a dir ");
                q2.append(parentFile.isDirectory());
                q2.append(", a file ");
                q2.append(parentFile.isFile());
                q2.append(", exists ");
                q2.append(parentFile.exists());
                q2.append(", readable ");
                q2.append(parentFile.canRead());
                q2.append(", writable ");
                q2.append(parentFile.canWrite());
                Log.e("MultiDex", q2.toString());
            }
            StringBuilder q3 = ic.q("Failed to create directory ");
            q3.append(file.getPath());
            throw new IOException(q3.toString());
        }
    }
}
