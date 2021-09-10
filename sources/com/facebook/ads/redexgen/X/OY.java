package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public final class OY extends InputStream {
    public static byte[] A04;
    public static String[] A05;
    @Nullable
    public MessageDigest A00;
    public final XK A01;
    public final OX A02;
    public final FileInputStream A03;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A05[7].charAt(24) == 'i') {
                break;
            }
            A05[7] = "wkBtkBfOXubsKwfKzYpxBJzZI93GSJMw";
            if (i4 < length) {
                byte b = copyOfRange[i4];
                String[] strArr = A05;
                if (strArr[0].charAt(11) == strArr[3].charAt(11)) {
                    break;
                }
                String[] strArr2 = A05;
                strArr2[1] = "6MRboz4pfSS0DylRcsmX7nz";
                strArr2[6] = "Z3yJOYkAPU5AGas9ZlGFYfEzislvm9u";
                copyOfRange[i4] = (byte) ((b - i3) - 45);
                i4++;
            } else {
                return new String(copyOfRange);
            }
        }
        throw new RuntimeException();
    }

    public static void A01() {
        A04 = new byte[]{-104, -113, Byte.MIN_VALUE, 11, 26, 19};
    }

    public static void A02() {
        A05 = new String[]{"5FxkjmViipfuOEmeGZRh1rWuAhi58BIY", "P0uDFh8HOwAWvDVGkGeATzc", "FQ2HPVuJ9Fju5P7EfteSFhbDkCSiUGCr", "lMnDCDrcSzZtU6RMhKfYe1rO633Hkzz8", "BZaCeAJ4mpNw1z6aTzzGkvXJAvKgKDg7", "gl5vlYV0aCgrCc0s0sEnhviYHRKbo8Yg", "Tgc0UJMQxUN8PgOF6KJ9ZKrej2a3tpw", "OSPCme8ftb56UzOVrw2bgiBSvmZFYlRk"};
    }

    public OY(XK xk, FileInputStream fileInputStream, OX ox) {
        this.A03 = fileInputStream;
        this.A02 = ox;
        this.A01 = xk;
        try {
            this.A00 = MessageDigest.getInstance(A00(0, 3, 30));
        } catch (NoSuchAlgorithmException unused) {
            this.A00 = null;
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.A03.available();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        return read(new byte[1]);
    }

    @Override // java.io.InputStream
    @SuppressLint({"CatchGeneralException"})
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.A03.read(bArr, i, i2);
        MessageDigest messageDigest = this.A00;
        if (messageDigest != null) {
            if (A05[7].charAt(24) != 'i') {
                A05[2] = "wFnf9K6AarqF2rYbRIkm3wGElU25UaCd";
                if (read > 0) {
                    try {
                        messageDigest.update(bArr, i, read);
                    } catch (Exception e) {
                        this.A00 = null;
                        this.A01.A04().A8l(A00(3, 3, 122), C03228e.A0q, new C03238f(e));
                    }
                } else if (read == -1) {
                    this.A02.A7f(LD.A04(messageDigest.digest()));
                    this.A00 = null;
                }
            } else {
                throw new RuntimeException();
            }
        }
        return read;
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        int i = (int) j;
        byte[] bArr = new byte[1024];
        long j2 = 0;
        while (i > 0) {
            int read = read(bArr, 0, Math.min(i, 1024));
            if (read <= 0) {
                break;
            }
            i -= read;
            j2 += (long) read;
        }
        return j2;
    }
}
