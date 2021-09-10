package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbjx implements zzamc<zzbkb> {
    private final Context context;
    private final PowerManager zzaae;
    private final zzqt zzfsd;

    public zzbjx(Context context2, zzqt zzqt) {
        this.context = context2;
        this.zzfsd = zzqt;
        this.zzaae = (PowerManager) context2.getSystemService("power");
    }

    /* renamed from: zza */
    public final JSONObject zzi(zzbkb zzbkb) {
        JSONObject jSONObject;
        boolean z;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzqx zzqx = zzbkb.zzfss;
        if (zzqx == null) {
            jSONObject = new JSONObject();
        } else if (this.zzfsd.zzlx() != null) {
            boolean z2 = zzqx.zzbrv;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject put = jSONObject3.put("afmaVersion", this.zzfsd.zzlw()).put("activeViewJSON", this.zzfsd.zzlx()).put(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, zzbkb.timestamp).put("adFormat", this.zzfsd.zzlv()).put("hashCode", this.zzfsd.getUniqueId()).put("isMraid", false).put("isStopped", false).put("isPaused", zzbkb.zzfsp).put("isNative", this.zzfsd.isNative());
            if (Build.VERSION.SDK_INT >= 20) {
                z = this.zzaae.isInteractive();
            } else {
                z = this.zzaae.isScreenOn();
            }
            put.put("isScreenOn", z).put("appMuted", zzr.zzkw().zzrb()).put("appVolume", (double) zzr.zzkw().zzra()).put("deviceVolume", (double) zzae.zzbg(this.context.getApplicationContext()));
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.context.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", zzqx.zzaal).put("isAttachedToWindow", z2).put("viewBox", new JSONObject().put("top", zzqx.zzbrw.top).put("bottom", zzqx.zzbrw.bottom).put("left", zzqx.zzbrw.left).put("right", zzqx.zzbrw.right)).put("adBox", new JSONObject().put("top", zzqx.zzbrx.top).put("bottom", zzqx.zzbrx.bottom).put("left", zzqx.zzbrx.left).put("right", zzqx.zzbrx.right)).put("globalVisibleBox", new JSONObject().put("top", zzqx.zzbry.top).put("bottom", zzqx.zzbry.bottom).put("left", zzqx.zzbry.left).put("right", zzqx.zzbry.right)).put("globalVisibleBoxVisible", zzqx.zzbrz).put("localVisibleBox", new JSONObject().put("top", zzqx.zzbsa.top).put("bottom", zzqx.zzbsa.bottom).put("left", zzqx.zzbsa.left).put("right", zzqx.zzbsa.right)).put("localVisibleBoxVisible", zzqx.zzbsb).put("hitBox", new JSONObject().put("top", zzqx.zzbsc.top).put("bottom", zzqx.zzbsc.bottom).put("left", zzqx.zzbsc.left).put("right", zzqx.zzbsc.right)).put("screenDensity", (double) this.context.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", zzbkb.zzbrj);
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcqu)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzqx.zzbse;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzbkb.zzfsr)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        } else {
            throw new JSONException("Active view Info cannot be null.");
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
