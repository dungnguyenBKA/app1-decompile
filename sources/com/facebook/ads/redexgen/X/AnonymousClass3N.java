package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.http.HttpStatus;
import org.apache.http.util.LangUtils;

/* renamed from: com.facebook.ads.redexgen.X.3N  reason: invalid class name */
public final class AnonymousClass3N extends AbstractC0398Be {
    public static byte[] A0C;
    public static String[] A0D;
    public static final int[] A0E = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, FacebookMediationAdapter.ERROR_NULL_CONTEXT, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    public static final int[] A0F = {0, 4, 8, 12, 16, 20, 24, 28};
    public static final int[] A0G = {11, 1, 3, 12, 14, 5, 7, 9};
    public static final int[] A0H = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    public static final int[] A0I = {193, HttpStatus.SC_CREATED, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, HttpStatus.SC_OK, HttpStatus.SC_ACCEPTED, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 235, HttpStatus.SC_PARTIAL_CONTENT, HttpStatus.SC_MULTI_STATUS, 239, 212, 217, 249, 219, 171, 187};
    public static final int[] A0J = {195, 227, HttpStatus.SC_RESET_CONTENT, HttpStatus.SC_NO_CONTENT, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    public static final int[] A0K = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
    public byte A00;
    public byte A01;
    public int A02;
    public int A03;
    public GI A04 = new GI(0, 4);
    public List<GB> A05;
    public List<GB> A06;
    public boolean A07;
    public final int A08;
    public final int A09;
    public final IM A0A = new IM();
    public final ArrayList<GI> A0B = new ArrayList<>();

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A0C = new byte[]{88, 73, 73, 85, 80, 90, 88, 77, 80, 86, 87, 22, 65, 20, 84, 73, 13, 20, 90, 92, 88, 20, 15, 9, 1};
    }

    public static void A08() {
        A0D = new String[]{"23YoP", "C5PaKb5CuNZ88jAQuKda3Ijqs42X0e51", "UjAKU", "ig9eEatozIbUeilu6P8PDlGI40FLnJQN", "3", "3yPqbEimTjK1Te0jzRxw8Mq4WDJCEE6c", "iulf573S2lPMND7gJrZX6jdv4yAWs7sY", "6"};
    }

    static {
        A08();
        A07();
    }

    public AnonymousClass3N(String str, int i) {
        int i2;
        if (A04(0, 25, 80).equals(str)) {
            i2 = 2;
        } else {
            i2 = 3;
        }
        this.A08 = i2;
        if (i == 3 || i == 4) {
            this.A09 = 2;
        } else {
            this.A09 = 1;
        }
        A0C(0);
        A06();
    }

    public static char A00(byte b) {
        return (char) A0E[(b & Byte.MAX_VALUE) - 32];
    }

    public static char A01(byte b) {
        return (char) A0I[b & 31];
    }

    public static char A02(byte b) {
        return (char) A0J[b & 31];
    }

    public static char A03(byte b) {
        return (char) A0H[b & 15];
    }

    private List<GB> A05() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.A0B.size(); i++) {
            GB A062 = this.A0B.get(i).A06();
            if (A062 != null) {
                arrayList.add(A062);
            }
        }
        return arrayList;
    }

    private void A06() {
        this.A04.A0A(this.A02);
        this.A0B.clear();
        this.A0B.add(this.A04);
    }

    private void A09(byte b) {
        this.A04.A09(' ');
        boolean z = true;
        if ((b & 1) != 1) {
            z = false;
        }
        this.A04.A0F((b >> 1) & 7, z);
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    private void A0A(byte b) {
        if (b != 32) {
            String[] strArr = A0D;
            if (strArr[4].length() == strArr[7].length()) {
                String[] strArr2 = A0D;
                strArr2[1] = "VpP0XbxTm16oYjwBPQX9pkQBfCeMI0LC";
                strArr2[5] = "MOPRimaIhpXtOf0evsEmKI44xylzjAWv";
                if (b != 41) {
                    switch (b) {
                        case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                            A0C(1);
                            A0D(2);
                            String[] strArr3 = A0D;
                            if (strArr3[3].charAt(24) == strArr3[6].charAt(24)) {
                                String[] strArr4 = A0D;
                                strArr4[4] = "Y";
                                strArr4[7] = "Z";
                                return;
                            }
                            break;
                        case 38:
                            A0C(1);
                            A0D(3);
                            return;
                        case 39:
                            A0C(1);
                            A0D(4);
                            return;
                        default:
                            int i = this.A02;
                            if (i != 0) {
                                if (b == 33) {
                                    this.A04.A07();
                                    return;
                                } else if (b != 36) {
                                    switch (b) {
                                        case 44:
                                            this.A05 = null;
                                            if (i == 1 || i == 3) {
                                                A06();
                                                return;
                                            }
                                            return;
                                        case 45:
                                            if (i == 1 && !this.A04.A0G()) {
                                                this.A04.A08();
                                                return;
                                            }
                                            return;
                                        case ModuleDescriptor.MODULE_VERSION /*{ENCODED_INT: 46}*/:
                                            A06();
                                            return;
                                        case 47:
                                            this.A05 = A05();
                                            A06();
                                            return;
                                        default:
                                            return;
                                    }
                                } else {
                                    return;
                                }
                            } else {
                                return;
                            }
                    }
                } else {
                    A0C(3);
                    return;
                }
            }
            throw new RuntimeException();
        }
        A0C(2);
    }

    private void A0B(byte b, byte b2) {
        boolean z;
        boolean z2;
        int i;
        int i2 = A0G[b & 7];
        boolean z3 = false;
        if ((b2 & 32) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i2++;
        }
        if (i2 != this.A04.A05()) {
            int i3 = this.A02;
            String[] strArr = A0D;
            if (strArr[3].charAt(24) != strArr[6].charAt(24)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[2] = "0Lleg";
            strArr2[0] = "zZ088";
            if (i3 != 1 && !this.A04.A0G()) {
                this.A04 = new GI(this.A02, this.A03);
                this.A0B.add(this.A04);
            }
            this.A04.A0D(i2);
        }
        if ((b2 & 16) == 16) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((b2 & 1) == 1) {
            z3 = true;
        }
        int i4 = (b2 >> 1) & 7;
        GI gi = this.A04;
        if (z2) {
            i = 8;
        } else {
            i = i4;
        }
        gi.A0F(i, z3);
        if (z2) {
            this.A04.A0C(A0F[i4]);
        }
    }

    private void A0C(int i) {
        if (this.A02 != i) {
            int i2 = this.A02;
            this.A02 = i;
            A06();
            if (i2 == 3 || i == 1 || i == 0) {
                this.A05 = null;
            }
        }
    }

    private void A0D(int i) {
        this.A03 = i;
        this.A04.A0B(i);
    }

    public static boolean A0E(byte b) {
        return (b & 240) == 16;
    }

    private boolean A0F(byte b, byte b2) {
        boolean A0E2 = A0E(b);
        if (A0E2) {
            if (this.A07 && this.A00 == b && this.A01 == b2) {
                this.A07 = false;
                return true;
            }
            this.A07 = true;
            this.A00 = b;
            this.A01 = b2;
        }
        if (A0G(b, b2)) {
            A09(b2);
        } else if (A0I(b, b2)) {
            A0B(b, b2);
        } else if (A0J(b, b2)) {
            this.A04.A0E(b2 - 32);
        } else if (A0H(b, b2)) {
            A0A(b2);
        }
        return A0E2;
    }

    public static boolean A0G(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    public static boolean A0H(byte b, byte b2) {
        return (b & 247) == 20 && (b2 & 240) == 32;
    }

    public static boolean A0I(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    public static boolean A0J(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0398Be
    public final GC A0N() {
        List<GB> list = this.A05;
        this.A06 = list;
        return new C1059aq(list);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0398Be
    public final /* bridge */ /* synthetic */ C0416By A0O() throws GD {
        return super.A4j();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0398Be
    public final /* bridge */ /* synthetic */ AbstractC0412Bs A0P() throws GD {
        return super.A4k();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0398Be
    public final /* bridge */ /* synthetic */ void A0Q(C0416By by) throws GD {
        super.ACj(by);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00bc, code lost:
        if (r4 == 0) goto L_0x00be;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00d5, code lost:
        if (r4 == 0) goto L_0x00be;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00d8, code lost:
        r9.A04.A09(A02(r3));
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC0398Be
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void A0R(com.facebook.ads.redexgen.X.C0416By r10) {
        /*
        // Method dump skipped, instructions count: 291
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass3N.A0R(com.facebook.ads.redexgen.X.By):void");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0398Be
    public final boolean A0T() {
        return this.A05 != this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0398Be, com.facebook.ads.redexgen.X.BZ
    public final void ACz() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0398Be, com.facebook.ads.redexgen.X.AbstractC1055am
    public final /* bridge */ /* synthetic */ void ADr(long j) {
        super.ADr(j);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0398Be, com.facebook.ads.redexgen.X.BZ
    public final void flush() {
        super.flush();
        this.A05 = null;
        this.A06 = null;
        A0C(0);
        A0D(4);
        A06();
        this.A07 = false;
        this.A00 = 0;
        this.A01 = 0;
    }
}
