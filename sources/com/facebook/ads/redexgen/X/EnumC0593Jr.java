package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.Jr  reason: case insensitive filesystem */
public enum EnumC0593Jr {
    A07(0),
    A0B(4),
    A09(5),
    A0A(6),
    A08(7),
    A0E(100),
    A0C(101),
    A0F(102),
    A0D(FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT),
    A05(HttpStatus.SC_OK),
    A04(HttpStatus.SC_INTERNAL_SERVER_ERROR),
    A03(HttpStatus.SC_CREATED),
    A06(HttpStatus.SC_BAD_REQUEST);
    
    public static byte[] A01;
    public final int A00;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 60);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-104, -117, -98, -109, -96, -113, -87, 124, Byte.MAX_VALUE, 122, -55, -68, -49, -60, -47, -64, -38, -67, -68, -55, -55, -64, -51, -92, -105, -86, -97, -84, -101, -75, -85, -92, -95, -92, -91, -83, -92, -45, -58, -40, -62, -45, -59, -58, -59, -32, -41, -54, -59, -58, -48, -52, -59, -62, -59, -58, -50, -59, -60, -78, -81, -61, -74, -78, -60, -52, -81, -82, -69, -69, -78, -65, -52, -97, -94, -99, -53, -71, -74, -54, -67, -71, -53, -45, -74, -75, -62, -62, -71, -58, -45, -87, -92, -24, -42, -45, -25, -38, -42, -24, -16, -45, -46, -33, -33, -42, -29, -16, -54, -63, -50, -68, -71, -51, -64, -68, -50, -42, -71, -72, -59, -59, -68, -55, -42, -61, -68, -66, -72, -70, -48, -19, -37, -40, -20, -33, -37, -19, -11, -33, -28, -22, -37, -24, -23, -22, -33, -22, -33, -41, -30, -11, -34, -27, -24, -33, -16, -27, -28, -22, -41, -30, -85, -103, -106, -86, -99, -103, -85, -77, -99, -94, -88, -103, -90, -89, -88, -99, -88, -99, -107, -96, -77, -88, -107, -106, -96, -103, -88, -69, -87, -90, -70, -83, -87, -69, -61, -83, -78, -72, -87, -74, -73, -72, -83, -72, -83, -91, -80, -61, -71, -78, -81, -78, -77, -69, -78, -80, -98, -101, -81, -94, -98, -80, -72, -94, -89, -83, -98, -85, -84, -83, -94, -83, -94, -102, -91, -72, -81, -98, -85, -83, -94, -100, -102, -91};
    }

    /* access modifiers changed from: public */
    static {
        A02();
    }

    /* access modifiers changed from: public */
    EnumC0593Jr(int i) {
        this.A00 = i;
    }

    @Nullable
    public static EnumC0593Jr A00(int i) {
        EnumC0593Jr[] values = values();
        for (EnumC0593Jr jr : values) {
            if (jr.A00 == i) {
                return jr;
            }
        }
        return null;
    }

    public final int A03() {
        return this.A00;
    }
}
