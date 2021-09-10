package com.vungle.warren.utility;

import android.os.Build;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;

public class FileUtility {
    private static final String TAG = FileUtility.class.getSimpleName();
    protected static final List<Class<?>> allowedClasses = Arrays.asList(LinkedHashSet.class, HashSet.class, HashMap.class, ArrayList.class, File.class);
    private static ObjectInputStreamProvider objectInputStreamProvider = new ObjectInputStreamProvider() {
        /* class com.vungle.warren.utility.FileUtility.AnonymousClass1 */

        @Override // com.vungle.warren.utility.FileUtility.ObjectInputStreamProvider
        public SafeObjectInputStream provideObjectInputStream(InputStream inputStream) {
            return new SafeObjectInputStream(inputStream, FileUtility.allowedClasses);
        }
    };

    /* access modifiers changed from: package-private */
    public interface ObjectInputStreamProvider {
        ObjectInputStream provideObjectInputStream(InputStream inputStream);
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void delete(File file) {
        if (file != null && file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        delete(file2);
                    }
                } else {
                    return;
                }
            }
            if (!file.delete()) {
                throw new FileNotFoundException("Failed to delete file: " + file);
            }
        }
    }

    public static void deleteAndLogIfFailed(File file) {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                Files.delete(file.toPath());
            } else if (!file.delete()) {
                String str = TAG;
                Log.e(str, "Cannot delete " + file.getName());
            }
        } catch (IOException e) {
            String str2 = TAG;
            StringBuilder q = ic.q("Cannot delete ");
            q.append(file.getName());
            Log.e(str2, q.toString(), e);
        }
    }

    private static String getIndentString(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("|  ");
        }
        return sb.toString();
    }

    static ObjectInputStreamProvider getObjectInputStreamProvider() {
        return objectInputStreamProvider;
    }

    public static void printDirectoryTree(File file) {
    }

    private static void printDirectoryTree(File file, int i, StringBuilder sb) {
        if (file != null) {
            if (file.isDirectory()) {
                sb.append(getIndentString(i));
                sb.append("+--");
                sb.append(file.getName());
                sb.append("/\n");
                if (file.listFiles() != null) {
                    File[] listFiles = file.listFiles();
                    for (File file2 : listFiles) {
                        if (file2.isDirectory()) {
                            printDirectoryTree(file2, i + 1, sb);
                        } else {
                            printFile(file2, i + 1, sb);
                        }
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("folder is not a Directory");
        }
    }

    private static void printFile(File file, int i, StringBuilder sb) {
        sb.append(getIndentString(i));
        sb.append("+--");
        sb.append(file.getName());
        sb.append('\n');
    }

    static ArrayList<String> readAllLines(String str) {
        File file = new File(str);
        if (file.exists()) {
            Object readSerializable = readSerializable(file);
            if (readSerializable instanceof ArrayList) {
                return (ArrayList) readSerializable;
            }
        }
        return new ArrayList<>();
    }

    public static HashMap<String, String> readMap(String str) {
        Object readSerializable = readSerializable(new File(str));
        if (readSerializable instanceof HashMap) {
            return (HashMap) readSerializable;
        }
        return new HashMap<>();
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:3:0x0008 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v8, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    public static <T> T readSerializable(File file) {
        Throwable th;
        FileInputStream fileInputStream;
        ObjectInputStream objectInputStream;
        FileInputStream fileInputStream2;
        IOException e;
        FileInputStream fileInputStream3;
        ClassNotFoundException e2;
        FileInputStream fileInputStream4;
        Exception e3;
        boolean exists = file.exists();
        ObjectInputStream objectInputStream2 = null;
        if (!exists) {
            return null;
        }
        try {
            FileInputStream fileInputStream5 = new FileInputStream(file);
            try {
                objectInputStream = objectInputStreamProvider.provideObjectInputStream(fileInputStream5);
            } catch (IOException e4) {
                e = e4;
                objectInputStream = null;
                fileInputStream3 = fileInputStream5;
                Log.e(TAG, "IOIOException", e);
                fileInputStream2 = fileInputStream3;
                closeQuietly(objectInputStream);
                closeQuietly(fileInputStream2);
                try {
                    delete(file);
                } catch (IOException unused) {
                }
                return null;
            } catch (ClassNotFoundException e5) {
                e2 = e5;
                objectInputStream = null;
                fileInputStream4 = fileInputStream5;
                Log.e(TAG, "ClassNotFoundException", e2);
                fileInputStream2 = fileInputStream4;
                closeQuietly(objectInputStream);
                closeQuietly(fileInputStream2);
                delete(file);
                return null;
            } catch (Exception e6) {
                e3 = e6;
                objectInputStream = null;
                exists = fileInputStream5;
                Log.e(TAG, "cannot read serializable", e3);
                fileInputStream2 = exists;
                closeQuietly(objectInputStream);
                closeQuietly(fileInputStream2);
                delete(file);
                return null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream5;
                closeQuietly(objectInputStream2);
                closeQuietly(fileInputStream);
                throw th;
            }
            try {
                T t = (T) objectInputStream.readObject();
                closeQuietly(objectInputStream);
                closeQuietly(fileInputStream5);
                return t;
            } catch (IOException e7) {
                e = e7;
                fileInputStream3 = fileInputStream5;
                Log.e(TAG, "IOIOException", e);
                fileInputStream2 = fileInputStream3;
                closeQuietly(objectInputStream);
                closeQuietly(fileInputStream2);
                delete(file);
                return null;
            } catch (ClassNotFoundException e8) {
                e2 = e8;
                fileInputStream4 = fileInputStream5;
                Log.e(TAG, "ClassNotFoundException", e2);
                fileInputStream2 = fileInputStream4;
                closeQuietly(objectInputStream);
                closeQuietly(fileInputStream2);
                delete(file);
                return null;
            } catch (Exception e9) {
                e3 = e9;
                exists = fileInputStream5;
                Log.e(TAG, "cannot read serializable", e3);
                fileInputStream2 = exists;
                closeQuietly(objectInputStream);
                closeQuietly(fileInputStream2);
                delete(file);
                return null;
            }
        } catch (IOException e10) {
            e = e10;
            fileInputStream3 = null;
            objectInputStream = null;
            Log.e(TAG, "IOIOException", e);
            fileInputStream2 = fileInputStream3;
            closeQuietly(objectInputStream);
            closeQuietly(fileInputStream2);
            delete(file);
            return null;
        } catch (ClassNotFoundException e11) {
            e2 = e11;
            fileInputStream4 = null;
            objectInputStream = null;
            Log.e(TAG, "ClassNotFoundException", e2);
            fileInputStream2 = fileInputStream4;
            closeQuietly(objectInputStream);
            closeQuietly(fileInputStream2);
            delete(file);
            return null;
        } catch (Exception e12) {
            e3 = e12;
            exists = 0;
            objectInputStream = null;
            Log.e(TAG, "cannot read serializable", e3);
            fileInputStream2 = exists;
            closeQuietly(objectInputStream);
            closeQuietly(fileInputStream2);
            delete(file);
            return null;
        } catch (Throwable th3) {
            th = th3;
            objectInputStream2 = objectInputStream;
            fileInputStream = exists;
            closeQuietly(objectInputStream2);
            closeQuietly(fileInputStream);
            throw th;
        }
    }

    static void setObjectInputStreamProvider(ObjectInputStreamProvider objectInputStreamProvider2) {
        objectInputStreamProvider = objectInputStreamProvider2;
    }

    public static long size(File file) {
        long j = 0;
        if (file == null || !file.exists()) {
            return 0;
        }
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null && listFiles.length > 0) {
            for (File file2 : listFiles) {
                j += size(file2);
            }
        }
        return j;
    }

    public static void writeAllLines(String str, ArrayList<String> arrayList) {
        File file = new File(str);
        if (file.exists()) {
            deleteAndLogIfFailed(file);
        }
        if (!arrayList.isEmpty()) {
            writeSerializable(file, arrayList);
        }
    }

    public static void writeMap(String str, HashMap<String, String> hashMap) {
        File file = new File(str);
        if (!hashMap.isEmpty()) {
            writeSerializable(file, hashMap);
        }
    }

    public static void writeSerializable(File file, Serializable serializable) {
        Throwable th;
        FileOutputStream fileOutputStream;
        IOException e;
        if (file.exists()) {
            deleteAndLogIfFailed(file);
        }
        if (serializable != null) {
            ObjectOutputStream objectOutputStream = null;
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(fileOutputStream);
                    try {
                        objectOutputStream2.writeObject(serializable);
                        objectOutputStream2.reset();
                        closeQuietly(objectOutputStream2);
                    } catch (IOException e2) {
                        e = e2;
                        objectOutputStream = objectOutputStream2;
                        try {
                            Log.e(TAG, "IOIOException", e);
                            closeQuietly(objectOutputStream);
                            closeQuietly(fileOutputStream);
                        } catch (Throwable th2) {
                            th = th2;
                            closeQuietly(objectOutputStream);
                            closeQuietly(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        objectOutputStream = objectOutputStream2;
                        closeQuietly(objectOutputStream);
                        closeQuietly(fileOutputStream);
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    Log.e(TAG, "IOIOException", e);
                    closeQuietly(objectOutputStream);
                    closeQuietly(fileOutputStream);
                }
            } catch (IOException e4) {
                e = e4;
                fileOutputStream = null;
                Log.e(TAG, "IOIOException", e);
                closeQuietly(objectOutputStream);
                closeQuietly(fileOutputStream);
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
                closeQuietly(objectOutputStream);
                closeQuietly(fileOutputStream);
                throw th;
            }
            closeQuietly(fileOutputStream);
        }
    }
}
