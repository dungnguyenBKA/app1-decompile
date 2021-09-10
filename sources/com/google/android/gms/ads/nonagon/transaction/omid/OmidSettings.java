package com.google.android.gms.ads.nonagon.transaction.omid;

import org.json.JSONObject;

public class OmidSettings {
    private final JSONObject a;

    public OmidSettings(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public OmidMediaType getMediaType() {
        int optInt = this.a.optInt("media_type", -1);
        if (optInt == 0) {
            return OmidMediaType.DISPLAY;
        }
        if (optInt != 1) {
            return OmidMediaType.UNKNOWN;
        }
        return OmidMediaType.VIDEO;
    }

    public String getVideoEventsOwner() {
        if (a.a[getMediaType().ordinal()] != 1) {
            return "javascript";
        }
        return null;
    }
}
