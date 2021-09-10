package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import javax.annotation.concurrent.GuardedBy;

/* access modifiers changed from: package-private */
public final class zzbbh implements SensorEventListener {
    private final SensorManager zzekw;
    private final Object zzekx = new Object();
    private final Display zzeky;
    private final float[] zzekz = new float[9];
    private final float[] zzela = new float[9];
    @GuardedBy("sensorThreadLock")
    private float[] zzelb;
    private Handler zzelc;
    private zzbbj zzeld;

    zzbbh(Context context) {
        this.zzekw = (SensorManager) context.getSystemService("sensor");
        this.zzeky = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    private final void zzl(int i, int i2) {
        float[] fArr = this.zzela;
        float f = fArr[i];
        fArr[i] = fArr[i2];
        fArr[i2] = f;
    }

    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.zzekx) {
                if (this.zzelb == null) {
                    this.zzelb = new float[9];
                }
            }
            SensorManager.getRotationMatrixFromVector(this.zzekz, fArr);
            int rotation = this.zzeky.getRotation();
            if (rotation == 1) {
                SensorManager.remapCoordinateSystem(this.zzekz, 2, 129, this.zzela);
            } else if (rotation == 2) {
                SensorManager.remapCoordinateSystem(this.zzekz, 129, 130, this.zzela);
            } else if (rotation != 3) {
                System.arraycopy(this.zzekz, 0, this.zzela, 0, 9);
            } else {
                SensorManager.remapCoordinateSystem(this.zzekz, 130, 1, this.zzela);
            }
            zzl(1, 3);
            zzl(2, 6);
            zzl(5, 7);
            synchronized (this.zzekx) {
                System.arraycopy(this.zzela, 0, this.zzelb, 0, 9);
            }
            zzbbj zzbbj = this.zzeld;
            if (zzbbj != null) {
                zzbbj.zzwa();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void start() {
        if (this.zzelc == null) {
            Sensor defaultSensor = this.zzekw.getDefaultSensor(11);
            if (defaultSensor == null) {
                zzazk.zzev("No Sensor of TYPE_ROTATION_VECTOR");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
            handlerThread.start();
            zzdvl zzdvl = new zzdvl(handlerThread.getLooper());
            this.zzelc = zzdvl;
            if (!this.zzekw.registerListener(this, defaultSensor, 0, zzdvl)) {
                zzazk.zzev("SensorManager.registerListener failed.");
                stop();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void stop() {
        if (this.zzelc != null) {
            this.zzekw.unregisterListener(this);
            this.zzelc.post(new zzbbk(this));
            this.zzelc = null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzbbj zzbbj) {
        this.zzeld = zzbbj;
    }

    /* access modifiers changed from: package-private */
    public final boolean zza(float[] fArr) {
        synchronized (this.zzekx) {
            float[] fArr2 = this.zzelb;
            if (fArr2 == null) {
                return false;
            }
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            return true;
        }
    }
}
