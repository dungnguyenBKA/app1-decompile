package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.zzcb;
import com.google.android.gms.internal.ads.zzcf;
import java.util.Iterator;
import java.util.LinkedList;

public abstract class zzdx implements zzdy {
    protected static volatile zzfc zzwc;
    protected MotionEvent zzwh;
    protected LinkedList<MotionEvent> zzwi = new LinkedList<>();
    protected long zzwj = 0;
    protected long zzwk = 0;
    protected long zzwl = 0;
    protected long zzwm = 0;
    protected long zzwn = 0;
    protected long zzwo = 0;
    protected long zzwp = 0;
    protected double zzwq;
    private double zzwr;
    private double zzws;
    protected float zzwt;
    protected float zzwu;
    protected float zzwv;
    protected float zzww;
    private boolean zzwx = false;
    protected boolean zzwy = false;
    protected DisplayMetrics zzwz;

    protected zzdx(Context context) {
        try {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsh)).booleanValue()) {
                zzda.zzbo();
            } else {
                zzff.zzb(zzwc);
            }
            this.zzwz = context.getResources().getDisplayMetrics();
        } catch (Throwable unused) {
        }
    }

    private final void zzbx() {
        this.zzwn = 0;
        this.zzwj = 0;
        this.zzwk = 0;
        this.zzwl = 0;
        this.zzwm = 0;
        this.zzwo = 0;
        this.zzwp = 0;
        if (this.zzwi.size() > 0) {
            Iterator<MotionEvent> it = this.zzwi.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.zzwi.clear();
        } else {
            MotionEvent motionEvent = this.zzwh;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.zzwh = null;
    }

    /* access modifiers changed from: protected */
    public abstract long zza(StackTraceElement[] stackTraceElementArr);

    /* access modifiers changed from: protected */
    public abstract zzcf.zza.zzb zza(Context context, zzcb.zza zza);

    @Override // com.google.android.gms.internal.ads.zzdy
    public String zza(Context context, View view, Activity activity) {
        return zza(context, null, zzew.zzyk, view, activity, null);
    }

    /* access modifiers changed from: protected */
    public abstract zzcf.zza.zzb zzb(Context context, View view, Activity activity);

    /* access modifiers changed from: protected */
    public abstract zzfi zzb(MotionEvent motionEvent);

    @Override // com.google.android.gms.internal.ads.zzdy
    public String zzb(Context context) {
        if (!zzfh.isMainThread()) {
            return zza(context, null, zzew.zzyj, null, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public void zzb(View view) {
    }

    /* access modifiers changed from: protected */
    public abstract zzcf.zza.zzb zzc(Context context, View view, Activity activity);

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public String zza(Context context, String str, View view, Activity activity) {
        return zza(context, str, zzew.zzyl, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public void zza(MotionEvent motionEvent) {
        boolean z = false;
        if (this.zzwx) {
            zzbx();
            this.zzwx = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.zzwq = 0.0d;
            this.zzwr = (double) motionEvent.getRawX();
            this.zzws = (double) motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = (double) motionEvent.getRawX();
            double rawY = (double) motionEvent.getRawY();
            double d = this.zzwr;
            Double.isNaN(rawX);
            double d2 = rawX - d;
            double d3 = this.zzws;
            Double.isNaN(rawY);
            double d4 = rawY - d3;
            this.zzwq = Math.sqrt((d4 * d4) + (d2 * d2)) + this.zzwq;
            this.zzwr = rawX;
            this.zzws = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 == 0) {
            this.zzwt = motionEvent.getX();
            this.zzwu = motionEvent.getY();
            this.zzwv = motionEvent.getRawX();
            this.zzww = motionEvent.getRawY();
            this.zzwj++;
        } else if (action2 == 1) {
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            this.zzwh = obtain;
            this.zzwi.add(obtain);
            if (this.zzwi.size() > 6) {
                this.zzwi.remove().recycle();
            }
            this.zzwl++;
            this.zzwn = zza(new Throwable().getStackTrace());
        } else if (action2 == 2) {
            this.zzwk += (long) (motionEvent.getHistorySize() + 1);
            try {
                zzfi zzb = zzb(motionEvent);
                if ((zzb == null || zzb.zzzu == null || zzb.zzzx == null) ? false : true) {
                    this.zzwo = zzb.zzzu.longValue() + zzb.zzzx.longValue() + this.zzwo;
                }
                if (!(this.zzwz == null || zzb == null || zzb.zzzv == null || zzb.zzzy == null)) {
                    z = true;
                }
                if (z) {
                    this.zzwp = zzb.zzzv.longValue() + zzb.zzzy.longValue() + this.zzwp;
                }
            } catch (zzev unused) {
            }
        } else if (action2 == 3) {
            this.zzwm++;
        }
        this.zzwy = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public void zza(int i, int i2, int i3) {
        if (this.zzwh != null) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrv)).booleanValue()) {
                zzbx();
            } else {
                this.zzwh.recycle();
            }
        }
        DisplayMetrics displayMetrics = this.zzwz;
        if (displayMetrics != null) {
            float f = displayMetrics.density;
            this.zzwh = MotionEvent.obtain(0, (long) i3, 1, ((float) i) * f, ((float) i2) * f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            this.zzwh = null;
        }
        this.zzwy = false;
    }

    private final String zza(Context context, String str, int i, View view, Activity activity, byte[] bArr) {
        String str2;
        zzdw zzdw;
        int i2;
        int i3;
        int i4;
        int i5;
        long currentTimeMillis = System.currentTimeMillis();
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrx)).booleanValue();
        zzcf.zza.zzb zzb = null;
        if (booleanValue) {
            zzdw = zzwc != null ? zzwc.zzcl() : null;
            str2 = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcsh)).booleanValue() ? "be" : "te";
        } else {
            zzdw = null;
            str2 = null;
        }
        try {
            if (i == zzew.zzyl) {
                zzb = zzb(context, view, activity);
                this.zzwx = true;
                i5 = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
            } else if (i == zzew.zzyk) {
                zzb = zzc(context, view, activity);
                i5 = 1008;
            } else {
                zzb = zza(context, null);
                i5 = AdError.NETWORK_ERROR_CODE;
            }
            if (booleanValue && zzdw != null) {
                zzdw.zza(i5, -1, System.currentTimeMillis() - currentTimeMillis, str2);
            }
        } catch (Exception e) {
            if (booleanValue && zzdw != null) {
                if (i == zzew.zzyl) {
                    i4 = 1003;
                } else if (i == zzew.zzyk) {
                    i4 = 1009;
                } else {
                    i4 = i == zzew.zzyj ? AdError.NO_FILL_ERROR_CODE : -1;
                }
                zzdw.zza(i4, -1, System.currentTimeMillis() - currentTimeMillis, str2, e);
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        if (zzb != null) {
            try {
                if (((zzcf.zza) ((zzelb) zzb.zzbiw())).zzbik() != 0) {
                    String zzj = zzda.zzj((zzcf.zza) ((zzelb) zzb.zzbiw()), str);
                    if (!booleanValue || zzdw == null) {
                        return zzj;
                    }
                    if (i == zzew.zzyl) {
                        i3 = 1006;
                    } else if (i == zzew.zzyk) {
                        i3 = 1010;
                    } else {
                        i3 = i == zzew.zzyj ? 1004 : -1;
                    }
                    zzdw.zza(i3, -1, System.currentTimeMillis() - currentTimeMillis2, str2);
                    return zzj;
                }
            } catch (Exception e2) {
                String num = Integer.toString(7);
                if (!booleanValue || zzdw == null) {
                    return num;
                }
                if (i == zzew.zzyl) {
                    i2 = 1007;
                } else if (i == zzew.zzyk) {
                    i2 = 1011;
                } else {
                    i2 = i == zzew.zzyj ? 1005 : -1;
                }
                zzdw.zza(i2, -1, System.currentTimeMillis() - currentTimeMillis2, str2, e2);
                return num;
            }
        }
        return Integer.toString(5);
    }
}
