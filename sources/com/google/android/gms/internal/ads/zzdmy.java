package com.google.android.gms.internal.ads;

import android.util.JsonReader;

public final class zzdmy {
    private int code;
    private String description;

    zzdmy(JsonReader jsonReader) {
        jsonReader.beginObject();
        int i = 3;
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("description")) {
                str = jsonReader.nextString();
            } else if (!nextName.equals("code")) {
                jsonReader.skipValue();
            } else {
                i = jsonReader.nextInt();
            }
        }
        jsonReader.endObject();
        this.code = i;
        this.description = str;
    }

    public final String getDescription() {
        return this.description;
    }
}
