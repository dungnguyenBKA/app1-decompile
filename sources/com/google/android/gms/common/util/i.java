package com.google.android.gms.common.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@Deprecated
public final class i {
    @Deprecated
    public static long a(InputStream inputStream, OutputStream outputStream) {
        return c(inputStream, outputStream, false);
    }

    @Deprecated
    public static byte[] b(InputStream inputStream, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        c(inputStream, byteArrayOutputStream, z);
        return byteArrayOutputStream.toByteArray();
    }

    @Deprecated
    private static long c(InputStream inputStream, OutputStream outputStream, boolean z) {
        byte[] bArr = new byte[1024];
        long j = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                j += (long) read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                if (z) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                }
                throw th;
            }
        }
        if (z) {
            try {
                inputStream.close();
            } catch (IOException unused3) {
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException unused4) {
                }
            }
        }
        return j;
    }
}
