package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashMap;
import javax.annotation.Nullable;

@SuppressLint({"StringFormatUse", "SharedPreferencesUse"})
/* renamed from: com.facebook.ads.redexgen.X.6y  reason: invalid class name and case insensitive filesystem */
public final class C03006y {
    public static C03006y A01;
    public static byte[] A02;
    public static String[] A03;
    public final HashMap<Integer, String> A00 = new HashMap<>();

    static {
        A04();
        A03();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 4);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{103, 114, 116, -70};
    }

    public static void A04() {
        A03 = new String[]{"rLDjBgKz63Bn2bjdq5T9imrieVp5PIBM", "m8wp0Vw9GL6Om21Qq8m8Tj5zfu0l", "YgqNWwRBt3ccTC8L8vt9EnrOaTNX", "Ji4mlDElrKKLO0fU8k8hI0n9H2FXwyxW", "wf5MYK5ehGzLy7SkBsWbSYGwiXhb8bxZ", "VWIuBm7xkqaJ1AqGCIKfvhlqUEnKMMIs", "Q1uyQO5SpdafJkDIvdpZDIFmVDRWB0Ou", "30w5jfTvH5e90EUSXrOKs1RMT2PDXB24"};
    }

    @SuppressLint({"CatchGeneralException"})
    public C03006y(Context context, EnumC02846i r4, @Nullable String str) {
        try {
            A05(context);
            if (r4.A05() == EnumC02846i.A0G.A05()) {
                A06(context, str);
            }
        } catch (Throwable th) {
            AnonymousClass67.A04(th);
        }
    }

    public static C03006y A00(Context context, EnumC02846i r2, @Nullable String str) {
        if (A01 == null) {
            A01 = new C03006y(context, r2, str);
        }
        return A01;
    }

    public static String A02(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(String.format(A01(0, 4, 62), Byte.valueOf(bArr[i])));
        }
        String sb2 = sb.toString();
        String[] strArr = A03;
        if (strArr[5].charAt(8) != strArr[6].charAt(8)) {
            A03[0] = "YeSBMNELIt08AqlHIfsrA8EpBPFL6cGm";
            return sb2;
        }
        throw new RuntimeException();
    }

    private void A05(Context context) throws Exception {
        int read;
        InputStream inputStream = null;
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(new File(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.publicSourceDir)), 1024);
            MessageDigest instance = MessageDigest.getInstance(AnonymousClass71.A04.A03());
            MessageDigest instance2 = MessageDigest.getInstance(AnonymousClass71.A05.A03());
            MessageDigest instance3 = MessageDigest.getInstance(AnonymousClass71.A06.A03());
            byte[] bArr = new byte[1024];
            do {
                read = bufferedInputStream.read(bArr);
                if (read > 0) {
                    instance.update(bArr, 0, read);
                    instance2.update(bArr, 0, read);
                    instance3.update(bArr, 0, read);
                }
                if (A03[7].charAt(26) != 'P') {
                    throw new RuntimeException();
                }
                A03[7] = "sHaOy6LtIlfUQKDjNh2L68IGHQPvVrDu";
            } while (read != -1);
            this.A00.put(10003, A02(instance.digest()));
            this.A00.put(10004, A02(instance2.digest()));
            this.A00.put(10005, A02(instance3.digest()));
            bufferedInputStream.close();
        } catch (Throwable th) {
            String[] strArr = A03;
            if (strArr[4].charAt(30) != strArr[3].charAt(30)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "XS9zpWe4kggJPLQjl3jzxSvjjqaK1CvG";
            strArr2[6] = "1gkHVsehFegipbXpJD0YhFUDmEZYz3Bw";
            if (0 != 0) {
                inputStream.close();
            }
            throw th;
        }
    }

    private void A06(Context context, @Nullable String str) throws Throwable {
        int read;
        if (str != null && !str.isEmpty()) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(context.getAssets().open(str), 1024);
            try {
                MessageDigest instance = MessageDigest.getInstance(AnonymousClass71.A04.A03());
                byte[] bArr = new byte[1024];
                do {
                    read = bufferedInputStream.read(bArr);
                    if (read > 0) {
                        instance.update(bArr, 0, read);
                    }
                } while (read != -1);
                this.A00.put(10010, A02(instance.digest()));
                bufferedInputStream.close();
                return;
            } catch (Throwable unused) {
            }
        } else {
            return;
        }
        throw th;
    }

    @Nullable
    public final String A07(int i) {
        String str = this.A00.get(Integer.valueOf(i));
        if (str != null) {
            return str;
        }
        return null;
    }
}
