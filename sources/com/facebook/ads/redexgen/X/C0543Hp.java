package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.facebook.ads.redexgen.X.Hp  reason: case insensitive filesystem */
public final class C0543Hp {
    public static byte[] A08;
    public static String[] A09;
    public IT A00;
    public boolean A01;
    public final SparseArray<String> A02;
    public final C0553Hz A03;
    public final HashMap<String, C0542Ho> A04;
    public final Cipher A05;
    public final SecretKeySpec A06;
    public final boolean A07;

    static {
        A06();
        A05();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 116);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        String[] strArr = A09;
        if (strArr[6].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[7] = "3hiG2MwLP1vY28w2jyIZHTbcKAlMPBPZ";
        strArr2[2] = "9NEv2gVVsGFA2BwX54IQqGQXEg3TAXQS";
        A08 = new byte[]{26, 30, 44, 32, 36, 50, 14, 34, 33, 34, 14, 47, 42, 34, 50, 20, 47, 32, 35, 35, 40, 45, 38, -48, -47, 26, 24, 26, 31, 28, 27, 22, 26, 38, 37, 43, 28, 37, 43, 22, 32, 37, 27, 28, 47, -27, 28, 47, 32};
    }

    public static void A06() {
        A09 = new String[]{"XONorMmEkuhCG9piVxKUh1vkXNNJ", "9nfZq9rsOYHCIqBCRPzuDpg7UYzPD2Yl", "Yz44fu3QSKzu2i5DyXETxtSOt38Z3WJk", "HOY3mHCHBdW1ht", "XI2xTZ9JkVa2GEn", "4OCnssyPGh2MUqheTrzmDcc0Epkw2MIq", "4Z9FwJdzaIh4z0baUKFOBcRAp1yx", "rZsSxCWfylE928lHlC5xkXC43RMRLxAb"};
    }

    public C0543Hp(File file, byte[] bArr, boolean z) {
        this.A07 = z;
        if (bArr != null) {
            C0551Hx.A03(bArr.length == 16);
            try {
                this.A05 = A03();
                this.A06 = new SecretKeySpec(bArr, A02(0, 3, 101));
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                throw new IllegalStateException(e);
            }
        } else {
            C0551Hx.A04(!z);
            this.A05 = null;
            this.A06 = null;
        }
        this.A04 = new HashMap<>();
        this.A02 = new SparseArray<>();
        this.A03 = new C0553Hz(new File(file, A02(25, 24, 67)));
    }

    public static int A00(SparseArray<String> sparseArray) {
        int keyAt;
        int id = sparseArray.size();
        if (id == 0) {
            keyAt = 0;
        } else {
            int i = id - 1;
            String[] strArr = A09;
            if (strArr[7].charAt(12) != strArr[2].charAt(12)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A09;
            strArr2[6] = "GpSMRVwbmVnvoZI5Ggc91zVjP9Ti";
            strArr2[0] = "f9953PfVQawIaiCUJ4cnumBLGdw9";
            keyAt = sparseArray.keyAt(i) + 1;
        }
        if (keyAt < 0) {
            keyAt = 0;
            while (keyAt < id && keyAt == sparseArray.keyAt(keyAt)) {
                keyAt++;
            }
        }
        return keyAt;
    }

    private C0542Ho A01(String str) {
        C0542Ho ho = new C0542Ho(A00(this.A02), str);
        A07(ho);
        this.A01 = true;
        return ho;
    }

    public static Cipher A03() throws NoSuchPaddingException, NoSuchAlgorithmException {
        int i = C0556Ic.A02;
        String A022 = A02(3, 20, FacebookMediationAdapter.ERROR_NULL_CONTEXT);
        if (i == 18) {
            try {
                return Cipher.getInstance(A022, A02(23, 2, 26));
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance(A022);
    }

    private void A04() throws C0533Hf {
        try {
            OutputStream A052 = this.A03.A05();
            if (this.A00 == null) {
                this.A00 = new IT(A052);
            } else {
                this.A00.A00(A052);
            }
            DataOutputStream dataOutputStream = new DataOutputStream(this.A00);
            dataOutputStream.writeInt(2);
            dataOutputStream.writeInt(this.A07 ? 1 : 0);
            if (this.A07) {
                byte[] bArr = new byte[16];
                new Random().nextBytes(bArr);
                dataOutputStream.write(bArr);
                try {
                    this.A05.init(1, this.A06, new IvParameterSpec(bArr));
                    dataOutputStream.flush();
                    dataOutputStream = new DataOutputStream(new CipherOutputStream(this.A00, this.A05));
                } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                    throw new IllegalStateException(e);
                }
            }
            dataOutputStream.writeInt(this.A04.size());
            int i = 0;
            for (C0542Ho ho : this.A04.values()) {
                ho.A0B(dataOutputStream);
                i += ho.A04(2);
            }
            dataOutputStream.writeInt(i);
            this.A03.A07(dataOutputStream);
            C0556Ic.A0Y(null);
        } catch (IOException e2) {
            throw new C0533Hf(e2);
        } catch (Throwable th) {
            C0556Ic.A0Y(null);
            throw th;
        }
    }

    private void A07(C0542Ho ho) {
        this.A04.put(ho.A03, ho);
        this.A02.put(ho.A02, ho.A03);
    }

    /* JADX INFO: Multiple debug info for r3v2 'i'  int: [D('i' int), D('fileHashCode' int)] */
    /* JADX INFO: Multiple debug info for r0v10 com.facebook.ads.redexgen.X.Ho: [D('cachedContent' com.facebook.ads.redexgen.X.Ho), D('hashCode' int)] */
    private boolean A08() {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.A03.A04());
            DataInputStream dataInputStream = new DataInputStream(bufferedInputStream);
            int readInt = dataInputStream.readInt();
            if (readInt < 0 || readInt > 2) {
                C0556Ic.A0Y(dataInputStream);
                return false;
            }
            if ((dataInputStream.readInt() & 1) != 0) {
                if (this.A05 == null) {
                    C0556Ic.A0Y(dataInputStream);
                    return false;
                }
                byte[] initializationVector = new byte[16];
                dataInputStream.readFully(initializationVector);
                try {
                    this.A05.init(2, this.A06, new IvParameterSpec(initializationVector));
                    dataInputStream = new DataInputStream(new CipherInputStream(bufferedInputStream, this.A05));
                } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                    throw new IllegalStateException(e);
                }
            } else if (this.A07) {
                this.A01 = true;
            }
            int readInt2 = dataInputStream.readInt();
            int i = 0;
            for (int i2 = 0; i2 < readInt2; i2++) {
                C0542Ho cachedContent = C0542Ho.A00(readInt, dataInputStream);
                A07(cachedContent);
                i += cachedContent.A04(readInt);
            }
            int readInt3 = dataInputStream.readInt();
            boolean isEOF = dataInputStream.read() == -1;
            if (readInt3 != i || !isEOF) {
                C0556Ic.A0Y(dataInputStream);
                return false;
            }
            C0556Ic.A0Y(dataInputStream);
            return true;
        } catch (IOException unused) {
            if (0 != 0) {
                C0556Ic.A0Y(null);
            }
            return false;
        } catch (Throwable th) {
            if (0 != 0) {
                C0556Ic.A0Y(null);
            }
            throw th;
        }
    }

    public final int A09(String str) {
        return A0B(str).A02;
    }

    public final C0542Ho A0A(String str) {
        return this.A04.get(str);
    }

    public final C0542Ho A0B(String str) {
        C0542Ho ho = this.A04.get(str);
        return ho == null ? A01(str) : ho;
    }

    public final AbstractC0545Hr A0C(String str) {
        C0542Ho A0A = A0A(str);
        return A0A != null ? A0A.A06() : C1107bc.A04;
    }

    public final String A0D(int i) {
        return this.A02.get(i);
    }

    public final Collection<C0542Ho> A0E() {
        return this.A04.values();
    }

    public final void A0F() {
        C0551Hx.A04(!this.A01);
        if (!A08()) {
            this.A03.A06();
            this.A04.clear();
            this.A02.clear();
        }
    }

    public final void A0G() {
        String[] strArr = new String[this.A04.size()];
        this.A04.keySet().toArray(strArr);
        for (String str : strArr) {
            A0I(str);
        }
    }

    public final void A0H() throws C0533Hf {
        if (this.A01) {
            A04();
            this.A01 = false;
        }
    }

    public final void A0I(String str) {
        C0542Ho ho = this.A04.get(str);
        if (ho != null && ho.A0D() && !ho.A0E()) {
            this.A04.remove(str);
            this.A02.remove(ho.A02);
            this.A01 = true;
        }
    }

    public final void A0J(String str, C0547Ht ht) {
        if (A0B(str).A0G(ht)) {
            this.A01 = true;
        }
    }
}
