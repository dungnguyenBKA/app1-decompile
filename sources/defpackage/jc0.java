package defpackage;

import android.content.Context;
import android.media.AudioManager;
import android.text.TextUtils;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: jc0  reason: default package */
public class jc0 {
    private int a = -1;
    private int b = 9;
    private int c = 21;
    private int d = 33;
    private int e = 10;

    private boolean a(Context context) {
        try {
            String r = cc0.r("ad_voice_config", "");
            if (!TextUtils.isEmpty(r)) {
                JSONObject jSONObject = new JSONObject(r);
                if (jSONObject.optInt("isOpen", 1) != 1) {
                    return false;
                }
                this.b = jSONObject.optInt("dayStartTime", 9);
                this.c = jSONObject.optInt("dayEndTime", 21);
                this.d = jSONObject.optInt("dayVoice", 33);
                this.e = jSONObject.optInt("nightVoice", 10);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return true;
    }

    public void b(Context context) {
        if (a(context) && !cc0.x(context)) {
            try {
                AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                int streamMaxVolume = audioManager.getStreamMaxVolume(3);
                int streamVolume = audioManager.getStreamVolume(3);
                this.a = streamVolume;
                int i = Calendar.getInstance().get(11);
                if (i < this.b || i >= this.c) {
                    int i2 = (int) (((float) (streamMaxVolume * this.e)) / 100.0f);
                    if (streamVolume > i2) {
                        audioManager.setStreamVolume(3, i2, 0);
                        return;
                    }
                    return;
                }
                int i3 = (int) (((float) (streamMaxVolume * this.d)) / 100.0f);
                if (streamVolume > i3) {
                    audioManager.setStreamVolume(3, i3, 0);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void c(Context context) {
        if (a(context)) {
            try {
                AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                int streamVolume = audioManager.getStreamVolume(3);
                int i = this.a;
                if (!(i == -1 || i == streamVolume)) {
                    audioManager.setStreamVolume(3, i, 0);
                }
                this.a = -1;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
