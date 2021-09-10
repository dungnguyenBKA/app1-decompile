package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.os.Build;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

public class V8 implements AbstractC02866k {
    public static byte[] A06;
    public static String[] A07;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final String A05;

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 56);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{-95, -96, 17, 8, 7, -72, -24, -38, -21, -20, 25};
    }

    public static void A03() {
        A07 = new String[]{"KDgd6MNQp", "zljFFu", "VjilcxnSKsnTmReAVmpDdy6aJMg5f7s6", "M9UxMwGxDbbJlDHBhdVrbnElbrcIb6xK", "Ta0jv7L5NWawm2KziAACyDWzZYF122Ra", "gHFWFjUMy", "XbHlXA", "YSRve52qNSnKNw3HKqPQ6WGg63dcEGZy"};
    }

    @SuppressLint({"MissingPermission"})
    public V8(BluetoothDevice bluetoothDevice) {
        this.A05 = bluetoothDevice.getName();
        this.A03 = bluetoothDevice.getBondState();
        if (Build.VERSION.SDK_INT >= 18) {
            this.A04 = bluetoothDevice.getType();
        } else {
            this.A04 = -1;
        }
        this.A00 = bluetoothDevice.getBluetoothClass().getDeviceClass();
        this.A01 = bluetoothDevice.getBluetoothClass().getMajorDeviceClass();
        this.A02 = A00(bluetoothDevice.getBluetoothClass());
    }

    public static int A00(BluetoothClass bluetoothClass) {
        int i = 0;
        for (int i2 = 0; i2 < 31; i2++) {
            String[] strArr = A07;
            if (strArr[4].charAt(13) != strArr[2].charAt(13)) {
                A07[7] = "ZZNppqHA2hsJ2mypaqhwEDmNkJueeDWX";
                if (bluetoothClass.hasService(1 << i2)) {
                    i |= 1 << i2;
                }
            } else {
                throw new RuntimeException();
            }
        }
        return i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02866k
    public final boolean A80(Object obj) {
        V8 v8 = (V8) obj;
        if (((this.A05 == null && v8.A05 == null) || this.A05.equals(v8.A05)) && this.A03 == v8.A03 && this.A04 == v8.A04 && this.A00 == v8.A00) {
            int i = this.A01;
            if (A07[3].charAt(27) != 'I') {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[5] = "lCz1bJjVX";
            strArr[0] = "UsNKRzwfX";
            return i == v8.A01 && this.A02 == v8.A02;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02866k
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    public final int ADz() {
        int i;
        if (this.A05 != null) {
            i = A01(5, 1, 18).length() + this.A05.length();
        } else {
            i = 0;
        }
        return i + A01(8, 2, 64).length() + 4 + A01(10, 1, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD).length() + 4 + A01(0, 2, 5).length() + 4 + A01(2, 3, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS).length() + 4 + A01(6, 2, 61).length() + 4;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02866k
    public final JSONObject AEJ() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(A01(5, 1, 18), this.A05);
        jSONObject.put(A01(8, 2, 64), this.A03);
        jSONObject.put(A01(10, 1, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), this.A04);
        jSONObject.put(A01(0, 2, 5), this.A00);
        jSONObject.put(A01(2, 3, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS), this.A01);
        jSONObject.put(A01(6, 2, 61), this.A02);
        return jSONObject;
    }
}
