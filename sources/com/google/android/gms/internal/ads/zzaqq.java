package com.google.android.gms.internal.ads;

import com.vungle.warren.model.AdvertisementDBAdapter;
import org.json.JSONException;
import org.json.JSONObject;

public class zzaqq {
    private final zzbeb zzdjd;
    private final String zzdqg;

    public zzaqq(zzbeb zzbeb) {
        this(zzbeb, "");
    }

    public final void zza(int i, int i2, int i3, int i4) {
        try {
            this.zzdjd.zza("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzazk.zzc("Error occurred while dispatching size change.", e);
        }
    }

    public final void zzb(int i, int i2, int i3, int i4) {
        try {
            this.zzdjd.zza("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzazk.zzc("Error occurred while dispatching default position.", e);
        }
    }

    public final void zzds(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.zzdqg);
            zzbeb zzbeb = this.zzdjd;
            if (zzbeb != null) {
                zzbeb.zza("onError", put);
            }
        } catch (JSONException e) {
            zzazk.zzc("Error occurred while dispatching error event.", e);
        }
    }

    public final void zzdt(String str) {
        try {
            this.zzdjd.zza("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzazk.zzc("Error occurred while dispatching ready Event.", e);
        }
    }

    public final void zzdu(String str) {
        try {
            this.zzdjd.zza("onStateChanged", new JSONObject().put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE, str));
        } catch (JSONException e) {
            zzazk.zzc("Error occurred while dispatching state change.", e);
        }
    }

    public zzaqq(zzbeb zzbeb, String str) {
        this.zzdjd = zzbeb;
        this.zzdqg = str;
    }

    public final void zza(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.zzdjd.zza("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", (double) f).put("rotation", i5));
        } catch (JSONException e) {
            zzazk.zzc("Error occurred while obtaining screen information.", e);
        }
    }
}
