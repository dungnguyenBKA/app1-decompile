package com.facebook.ads.redexgen.X;

import android.bluetooth.BluetoothDevice;
import java.util.ArrayList;

public class V7 implements AbstractC02806e {
    public final /* synthetic */ V9 A00;

    public V7(V9 v9) {
        this.A00 = v9;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() throws Exception {
        if (this.A00.A00 == null) {
            return this.A00.A08(EnumC02916p.A06);
        }
        ArrayList arrayList = new ArrayList();
        for (BluetoothDevice bluetoothDevice : this.A00.A00.getBondedDevices()) {
            arrayList.add(new V8(bluetoothDevice));
        }
        return this.A00.A0E(arrayList);
    }
}
