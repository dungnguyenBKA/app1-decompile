package com.google.firebase.remoteconfig.internal;

import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class f {
    private static final Date f = new Date(0);
    public static final /* synthetic */ int g = 0;
    private JSONObject a;
    private JSONObject b;
    private Date c;
    private JSONArray d;
    private JSONObject e;

    public static class b {
        private JSONObject a = new JSONObject();
        private Date b = f.f;
        private JSONArray c = new JSONArray();
        private JSONObject d = new JSONObject();

        b(a aVar) {
        }

        public f a() {
            return new f(this.a, this.b, this.c, this.d);
        }

        public b b(JSONObject jSONObject) {
            try {
                this.a = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b c(JSONArray jSONArray) {
            try {
                this.c = new JSONArray(jSONArray.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b d(Date date) {
            this.b = date;
            return this;
        }

        public b e(JSONObject jSONObject) {
            try {
                this.d = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }
    }

    static f b(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
        }
        return new f(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), optJSONObject);
    }

    public JSONArray c() {
        return this.d;
    }

    public JSONObject d() {
        return this.b;
    }

    public Date e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        return this.a.toString().equals(((f) obj).toString());
    }

    public JSONObject f() {
        return this.e;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.toString();
    }

    private f(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        this.b = jSONObject;
        this.c = date;
        this.d = jSONArray;
        this.e = jSONObject2;
        this.a = jSONObject3;
    }
}
