package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.7E  reason: invalid class name */
public final class AnonymousClass7E {
    public static byte[] A02;
    public static String[] A03;
    public static final String A04 = AnonymousClass7E.class.getSimpleName();
    public static volatile AnonymousClass7E A05;
    public final XK A00;
    public final Map<String, AnonymousClass7A> A01 = Collections.synchronizedMap(new HashMap());

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 89);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A02 = new byte[]{97, 102, 34, 124, 98, 107, 68, 103, 98, 38, 105, 115, 114, 118, 115, 114, 38, 98, 99, 117, 114, 111, 104, 103, 114, 111, 105, 104, 38, 46, 96, 111, 106, 99, 59, 27, 57, 59, 48, 61, 120, 61, 42, 42, 55, 42, 118, 120, 26, 49, 44, 53, 57, 40, 120, 49, 43, 120, 54, 45, 52, 52, 118, 98, 69, 77, 72, 65, 64, 4, 80, 75, 4, 71, 75, 84, 93, 4, 72, 75, 71, 69, 72, 4, 77, 73, 69, 67, 65, 4, 77, 74, 80, 75, 4, 71, 69, 71, 76, 65, 4, 12, 81, 86, 72, 25, 42, 17, 30, 29, 19, 26, 95, 11, 16, 95, 8, 13, 22, 11, 26, 95, 29, 22, 11, 18, 30, 15, 95, 11, 16, 95, 25, 22, 19, 26, 95, 87, 10, 13, 19, 66, 53, 14, 1, 2, 12, 5, 64, 20, 15, 64, 23, 18, 9, 20, 5, 64, 2, 9, 20, 13, 1, 16, 64, 20, 15, 64, 15, 21, 20, 16, 21, 20, 64, 19, 20, 18, 5, 1, 13, 100, 118, 118, 96, 113, 63, 42, 42, 42, 121, 118, 115, 122, 37, 48, 48, 48, 52, 56, 62, 60, 78, 77, 67, 70, 7, 28, 25, 28, 29, 5, 28};
    }

    public static void A09() {
        A03 = new String[]{"xEW9LSpkxtcMkiVkCjWXuTu5CJHPJiyq", "tTP", "A", "dhAFlm3SiPB0s9864OvgcmZEVzRtwwmX", "mnE9bSEHBlleLkXo6La2W5bpkmZqSUyN", "0jwmHWkFqK", "xBcWrb6s57BN1yke0uYkFqIHC7aAgPEb", "dL0KwaEpZdlIbw3ka3MpOkzONR5qkJY2"};
    }

    static {
        A09();
        A08();
    }

    public AnonymousClass7E(XK xk) {
        this.A00 = xk;
    }

    private int A00(String str, @Nullable Bitmap bitmap) {
        String A07 = A07(0, 2, 17);
        if (bitmap == null) {
            A0B(null);
            return 0;
        }
        File cacheDir = this.A00.getCacheDir();
        File file = new File(cacheDir, str.hashCode() + A07(2, 4, 85));
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            int size = byteArrayOutputStream.size();
            if (size >= J4.A0D(this.A00)) {
                return 0;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byteArrayOutputStream.writeTo(fileOutputStream);
            fileOutputStream.flush();
            A0A(byteArrayOutputStream);
            A0A(fileOutputStream);
            return size;
        } catch (FileNotFoundException e) {
            String str2 = A04;
            Log.e(str2, A07(6, 29, 95) + file.getPath() + A07, e);
            A0B(e);
            return 0;
        } catch (IOException e2) {
            A0B(e2);
            String str3 = A04;
            Log.e(str3, A07(FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 36, 38) + str + A07, e2);
            return 0;
        } catch (OutOfMemoryError e3) {
            A0B(e3);
            Log.e(A04, A07(142, 39, 57), e3);
            return 0;
        } finally {
            A0A(byteArrayOutputStream);
            A0A(null);
        }
    }

    @Nullable
    private final Bitmap A01(AnonymousClass8D r12, AnonymousClass7A r13, int i, int i2, String str) {
        if (AnonymousClass7G.A06(r12) && A07(HttpStatus.SC_ACCEPTED, 4, 123).equals(str)) {
            Map<String, AnonymousClass7A> map = this.A01;
            if (A03[4].charAt(4) != 'b') {
                throw new RuntimeException();
            }
            A03[1] = "FHlvPh";
            map.put(r13.A07, r13);
        }
        String str2 = r13.A07;
        AnonymousClass7F r5 = new AnonymousClass7F(r13.A05, r13.A06, A07(197, 5, 0), str, str2);
        File cacheDir = this.A00.getCacheDir();
        File file = new File(cacheDir, str2.hashCode() + A07(2, 4, 85));
        if (!file.exists()) {
            AnonymousClass7G.A04(r12, r5, false);
            if (str2.startsWith(A07(190, 7, 70))) {
                return A04(str2, i2, i);
            }
            return A02(r12, r13, str);
        }
        AnonymousClass7G.A04(r12, r5, true);
        try {
            if (A0C(i2, i)) {
                return AnonymousClass7H.A02(file.getCanonicalPath(), i2, i, this.A00);
            }
            return BitmapFactory.decodeFile(file.getCanonicalPath());
        } catch (IOException e) {
            A0B(e);
            return null;
        }
    }

    /* JADX INFO: Multiple debug info for r0v4 long: [D('requestTime' long), D('loadTime' long)] */
    @Nullable
    private Bitmap A02(AnonymousClass8D r18, AnonymousClass7A r19, String str) {
        Bitmap bitmap;
        String failureReason = r19.A07;
        int i = r19.A03;
        int i2 = r19.A04;
        long currentTimeMillis = System.currentTimeMillis();
        IOException e = null;
        String str2 = null;
        if (failureReason.startsWith(A07(181, 9, 92))) {
            try {
                InputStream open = this.A00.getAssets().open(failureReason.substring(9));
                if (A0C(i, i2)) {
                    bitmap = AnonymousClass7H.A01(open, i, i2);
                } else {
                    bitmap = BitmapFactory.decodeStream(open);
                }
                if (open != null) {
                    A0A(open);
                }
            } catch (IOException e2) {
                A0B(e2);
                if (0 != 0) {
                    A0A(null);
                }
                return null;
            } catch (OutOfMemoryError e3) {
                A0B(e3);
                if (0 != 0) {
                    A0A(null);
                }
                return null;
            } catch (Throwable th) {
                if (0 != 0) {
                    A0A(null);
                }
                throw th;
            }
        } else if (A0C(i, i2)) {
            try {
                bitmap = A05(failureReason, i, i2);
            } catch (IOException e4) {
                e = e4;
                A0B(e);
                bitmap = A03(failureReason);
            }
            if (A03[2].length() != 5) {
                A03[3] = "EtuvklQgZLPMp8CYh3QQVMKsyyqrprqR";
            } else {
                throw new RuntimeException();
            }
        } else {
            bitmap = A03(failureReason);
        }
        if (e != null) {
            str2 = e.toString();
        }
        if (bitmap != null) {
            int width = A00(failureReason, bitmap);
            long loadTime = System.currentTimeMillis() - currentTimeMillis;
            if (width > 0) {
                AnonymousClass7G.A03(r18, r19, str, AnonymousClass7G.A02, str2, Integer.valueOf(width), Long.valueOf(loadTime));
            } else {
                int i3 = AnonymousClass7G.A01;
                String[] strArr = A03;
                if (strArr[0].charAt(0) != strArr[6].charAt(0)) {
                    AnonymousClass7G.A03(r18, r19, str, i3, str2, null, null);
                } else {
                    A03[1] = "v696HPT8k3klpjO3N";
                    AnonymousClass7G.A03(r18, r19, str, i3, str2, null, null);
                }
            }
        } else {
            AnonymousClass7G.A03(r18, r19, str, AnonymousClass7G.A03, str2, null, null);
        }
        return bitmap;
    }

    @Nullable
    private Bitmap A03(String str) {
        byte[] A5h;
        QJ ACP = C0755Qc.A00(this.A00).ACP(str, new QY());
        if (ACP == null || (A5h = ACP.A5h()) == null) {
            return null;
        }
        return BitmapFactory.decodeByteArray(A5h, 0, A5h.length);
    }

    /* JADX INFO: Multiple debug info for r8v0 java.lang.String: [D('bitmap' android.graphics.Bitmap), D('ioe' java.io.IOException)] */
    @Nullable
    private Bitmap A04(String str, int i, int i2) {
        Bitmap bitmap;
        try {
            boolean A0C = A0C(i, i2);
            String A07 = A07(190, 7, 70);
            if (A0C) {
                bitmap = AnonymousClass7H.A02(str.substring(A07.length()), i, i2, this.A00);
            } else {
                bitmap = BitmapFactory.decodeStream(new FileInputStream(str.substring(A07.length())), null, null);
            }
            A00(str, bitmap);
            return bitmap;
        } catch (IOException e) {
            String str2 = A04;
            Log.e(str2, A07(63, 43, 125) + str + A07(0, 2, 17), e);
            return null;
        }
    }

    @Nullable
    private Bitmap A05(String str, int i, int i2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setDoInput(true);
        httpURLConnection.connect();
        InputStream inputStream = httpURLConnection.getInputStream();
        Bitmap A012 = AnonymousClass7H.A01(inputStream, i, i2);
        A0A(inputStream);
        return A012;
    }

    public static AnonymousClass7E A06(XK xk) {
        if (A05 == null) {
            synchronized (AnonymousClass7E.class) {
                if (A05 == null) {
                    A05 = new AnonymousClass7E(xk);
                }
            }
        }
        return A05;
    }

    public static void A0A(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private void A0B(@Nullable Throwable th) {
        String A07 = A07(197, 5, 0);
        if (th != null) {
            this.A00.A04().A8V(A07, C03228e.A1N, new C03238f(th));
        } else {
            this.A00.A04().A8V(A07, C03228e.A1N, new C03238f(A07(35, 28, 1)));
        }
    }

    private boolean A0C(int i, int i2) {
        return i > 0 && i2 > 0 && J4.A0v(this.A00);
    }

    @Nullable
    public final Bitmap A0D(AnonymousClass7A r7) {
        return A01(this.A00, r7, r7.A04, r7.A03, r7.A01);
    }

    @Nullable
    public final Bitmap A0E(AnonymousClass8D r15, String str, int i, int i2, String str2) {
        AnonymousClass7A r4 = this.A01.get(str);
        if (!AnonymousClass7G.A06(r15) || r4 == null) {
            return A01(r15, new AnonymousClass7A(str, i, i2, A07(HttpStatus.SC_PARTIAL_CONTENT, 7, 43), A07(HttpStatus.SC_PARTIAL_CONTENT, 7, 43)), i2, i, str2);
        }
        return A01(r15, r4, i2, i, str2);
    }

    @Nullable
    public final File A0F(String str) {
        File cacheDir = this.A00.getCacheDir();
        File file = new File(cacheDir, str.hashCode() + A07(2, 4, 85));
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public final String A0G(String str) {
        File cacheDir = this.A00.getCacheDir();
        File file = new File(cacheDir, str.hashCode() + A07(2, 4, 85));
        return file.exists() ? file.getPath() : str;
    }
}
