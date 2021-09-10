package com.facebook.ads.redexgen.X;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

/* renamed from: com.facebook.ads.redexgen.X.8l  reason: invalid class name and case insensitive filesystem */
public class C03298l implements SensorEventListener {
    public C03298l() {
    }

    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] unused = C03318n.A09 = sensorEvent.values;
        C03318n.A06();
    }
}
