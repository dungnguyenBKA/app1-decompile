package com.facebook.ads.redexgen.X;

import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* renamed from: com.facebook.ads.redexgen.X.2u  reason: invalid class name and case insensitive filesystem */
public final class C01942u extends C3 {
    public static byte[] A05;
    public static String[] A06;
    public int A00;
    public Inflater A01;
    public byte[] A02;
    public final GW A03 = new GW();
    public final IM A04 = new IM();

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 117);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{97, 86, 66, 117, 84, 82, 94, 85, 84, 67};
    }

    public static void A03() {
        A06 = new String[]{"D8ktImD4gI341B9dMX", "p", "8S1Qfr0uQHuWlKinBNgV3mwJeBc1O2wn", "O", "UgOsD1qslkvgk8WTNW5IJqqmR5mppeJL", "YmudOgNfte0R1MlRzZs3i7R", "t", "Vvarb6mClw"};
    }

    public C01942u() {
        super(A01(0, 10, 68));
    }

    public static GB A00(IM im, GW gw) {
        int sectionLength = im.A08();
        int nextSectionPosition = im.A0F();
        int A0J = im.A0J();
        int A07 = im.A07() + A0J;
        if (A07 > sectionLength) {
            im.A0Z(sectionLength);
            return null;
        }
        GB gb = null;
        if (nextSectionPosition != 128) {
            switch (nextSectionPosition) {
                case 20:
                    gw.A06(im, A0J);
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    gw.A04(im, A0J);
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    gw.A05(im, A0J);
                    break;
            }
        } else {
            gb = gw.A07();
            String[] strArr = A06;
            if (strArr[5].length() != strArr[7].length()) {
                A06[0] = "8Q7r9e8nqCgCYEZ6IU";
                gw.A08();
            } else {
                gw.A08();
            }
        }
        im.A0Z(A07);
        if (A06[0].length() != 18) {
            throw new RuntimeException();
        }
        A06[2] = "BTE07TDUmys5OOcsYpYqmwkAe847KCkG";
        return gb;
    }

    private boolean A04(byte[] bArr, int i) {
        if (i != 0) {
            byte b = bArr[0];
            if (A06[3].length() != 1) {
                throw new RuntimeException();
            }
            A06[4] = "3s6wsel2PksO74PVHVwG8hUXCMbdJ5Q0";
            if (b == 120) {
                if (this.A01 == null) {
                    this.A01 = new Inflater();
                    this.A02 = new byte[i];
                }
                this.A00 = 0;
                this.A01.setInput(bArr, 0, i);
                while (!this.A01.finished() && !this.A01.needsDictionary() && !this.A01.needsInput()) {
                    try {
                        if (this.A00 == this.A02.length) {
                            this.A02 = Arrays.copyOf(this.A02, this.A02.length * 2);
                        }
                        this.A00 += this.A01.inflate(this.A02, this.A00, this.A02.length - this.A00);
                    } catch (DataFormatException unused) {
                        return false;
                    } finally {
                        this.A01.reset();
                    }
                }
                return this.A01.finished();
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C3
    public final GC A0d(byte[] bArr, int i, boolean z) throws GD {
        if (A04(bArr, i)) {
            this.A04.A0c(this.A02, this.A00);
        } else {
            IM im = this.A04;
            if (A06[0].length() != 18) {
                throw new RuntimeException();
            }
            A06[2] = "roAZZspd009Dh1499aBQr6xCTRbeSGaA";
            im.A0c(bArr, i);
        }
        this.A03.A08();
        ArrayList arrayList = new ArrayList();
        while (this.A04.A05() >= 3) {
            GB A002 = A00(this.A04, this.A03);
            if (A002 != null) {
                arrayList.add(A002);
            }
        }
        return new C1061as(Collections.unmodifiableList(arrayList));
    }
}
