package com.facebook.ads.redexgen.X;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class WR implements AbstractC02806e {
    public static byte[] A01;
    public static String[] A02;
    public final /* synthetic */ WT A00;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 123);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{49, 39, 44, 49, 45, 48};
    }

    public static void A02() {
        A02 = new String[]{"DYzZ33D", "FX", "1OACtFyT458udh1Nq8LtT5hKAntFdlV0", "NREy1eS", "YXbhfnB1JeAOpwzc7R5F4UgUcnERyrlo", "CB", "UiK58QgaQ3DZSY0y2Dj7Y4rAezwTtVBd", "ZsDGmeWwG8AfDaZfTpPswbVEo9CgGFmV"};
    }

    public WR(WT wt) {
        this.A00 = wt;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() throws Exception {
        WT wt = this.A00;
        wt.A00 = (SensorManager) wt.A01.getSystemService(A00(0, 6, 57));
        if (Build.VERSION.SDK_INT < 20) {
            return this.A00.A08(EnumC02916p.A05);
        }
        WT wt2 = this.A00;
        String[] strArr = A02;
        if (strArr[5].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[5] = "Uf";
        strArr2[1] = "fm";
        if (wt2.A00 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        List<Sensor> sensorList = this.A00.A00.getSensorList(-1);
        ArrayList arrayList = new ArrayList();
        for (Sensor sensor : sensorList) {
            arrayList.add(new WS(sensor));
        }
        return this.A00.A0E(arrayList);
    }
}
