package com.vungle.warren.utility;

import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class UnzipUtility {
    private static final int BUFFER_SIZE = 4096;
    private static final String TAG = "com.vungle.warren.utility.UnzipUtility";

    public interface Filter {
        boolean matches(String str);
    }

    /* access modifiers changed from: package-private */
    public static class ZipSecurityException extends IOException {
        ZipSecurityException(String str) {
            super(str);
        }
    }

    static void extractFile(InputStream inputStream, String str) {
        Throwable th;
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        File file = new File(str);
        FileUtility.delete(file);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            } catch (Throwable th2) {
                th = th2;
                FileUtility.closeQuietly(inputStream);
                FileUtility.closeQuietly(bufferedOutputStream2);
                FileUtility.closeQuietly(fileOutputStream);
                throw th;
            }
            try {
                byte[] bArr = new byte[BUFFER_SIZE];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        bufferedOutputStream.write(bArr, 0, read);
                    } else {
                        FileUtility.closeQuietly(inputStream);
                        FileUtility.closeQuietly(bufferedOutputStream);
                        FileUtility.closeQuietly(fileOutputStream);
                        return;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream2 = bufferedOutputStream;
                FileUtility.closeQuietly(inputStream);
                FileUtility.closeQuietly(bufferedOutputStream2);
                FileUtility.closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
            FileUtility.closeQuietly(inputStream);
            FileUtility.closeQuietly(bufferedOutputStream2);
            FileUtility.closeQuietly(fileOutputStream);
            throw th;
        }
    }

    public static List<File> unzip(String str, String str2) {
        return unzip(str, str2, null);
    }

    private static String validateFilename(String str, String str2) {
        String canonicalPath = new File(str).getCanonicalPath();
        if (canonicalPath.startsWith(new File(str2).getCanonicalPath())) {
            return canonicalPath;
        }
        Log.e(TAG, "File is outside extraction target directory.");
        throw new ZipSecurityException("File is outside extraction target directory.");
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x008d A[SYNTHETIC, Splitter:B:32:0x008d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.List<java.io.File> unzip(java.lang.String r5, java.lang.String r6, com.vungle.warren.utility.UnzipUtility.Filter r7) {
        /*
        // Method dump skipped, instructions count: 163
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.utility.UnzipUtility.unzip(java.lang.String, java.lang.String, com.vungle.warren.utility.UnzipUtility$Filter):java.util.List");
    }
}
