package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.util.Log;
import java.util.Arrays;
import javax.annotation.Nullable;

public final class WM extends AnonymousClass6V {
    public static byte[] A07;
    public static final String A08 = WM.class.getSimpleName();
    public final Context A00;
    @Nullable
    public final PackageInfo A01;
    @Nullable
    public final PackageManager A02;
    public final C02715v A03;
    @Nullable
    public final ActivityInfo[] A04;
    @Nullable
    public final ServiceInfo[] A05;
    @Nullable
    public final String[] A06;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 119);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A07 = new byte[]{29, 57, 35, 35, 57, 62, 55, 112, 0, 49, 51, 59, 49, 55, 53, 112, 0, 53, 34, 61, 57, 35, 35, 57, 63, 62, 35};
    }

    static {
        A07();
    }

    public WM(Context context, C02715v r3) {
        super(context, r3);
        this.A00 = context;
        this.A03 = r3;
        this.A01 = A02(context);
        this.A02 = context.getPackageManager();
        this.A04 = A08(context);
        this.A05 = A0A(context);
        this.A06 = A0C(context);
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private PackageInfo A02(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(A08, A06(0, 27, 39), e);
            return null;
        }
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private ActivityInfo[] A08(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 1).activities;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(A08, A06(0, 27, 39), e);
            return null;
        }
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private ServiceInfo[] A0A(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 4).services;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(A08, A06(0, 27, 39), e);
            return null;
        }
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private String[] A0C(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(A08, A06(0, 27, 39), e);
            return null;
        }
    }

    public final AbstractC02806e A0H() {
        return new WK(this);
    }

    public final AbstractC02806e A0I() {
        return new WJ(this);
    }

    public final AbstractC02806e A0J() {
        return new WL(this);
    }

    public final AbstractC02806e A0K() {
        return new WI(this);
    }

    public final AbstractC02806e A0L() {
        return new WD(this);
    }

    public final AbstractC02806e A0M() {
        return new W9(this);
    }

    public final AbstractC02806e A0N() {
        return new WE(this);
    }

    public final AbstractC02806e A0O() {
        return new WH(this);
    }

    public final AbstractC02806e A0P() {
        return new WF(this);
    }

    public final AbstractC02806e A0Q() {
        return new WG(this);
    }

    public final AbstractC02806e A0R() {
        return new WC(this);
    }

    public final AbstractC02806e A0S() {
        return new WB(this);
    }

    public final AbstractC02806e A0T() {
        return new WA(this);
    }

    public final AbstractC02806e A0U() {
        return new W7(this);
    }

    public final AbstractC02806e A0V() {
        return new W6(this);
    }

    public final AbstractC02806e A0W() {
        return new W8(this);
    }

    public final AbstractC02806e A0X() {
        return new W4(this);
    }

    public final AbstractC02806e A0Y() {
        return new W3(this);
    }

    public final AbstractC02806e A0Z() {
        return new W5(this);
    }
}
