package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.firebase.installations.g;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

/* renamed from: t00  reason: default package */
public class t00 implements u00 {
    private static final Pattern f = Pattern.compile("[^\\p{Alnum}]");
    private static final String g = Pattern.quote("/");
    private final v00 a;
    private final Context b;
    private final String c;
    private final g d;
    private String e;

    public t00(Context context, String str, g gVar) {
        if (str != null) {
            this.b = context;
            this.c = str;
            this.d = gVar;
            this.a = new v00();
            return;
        }
        throw new IllegalArgumentException("appIdentifier must not be null");
    }

    private synchronized String a(String str, SharedPreferences sharedPreferences) {
        String str2;
        String uuid = UUID.randomUUID().toString();
        if (uuid == null) {
            str2 = null;
        } else {
            str2 = f.matcher(uuid).replaceAll("").toLowerCase(Locale.US);
        }
        az f2 = az.f();
        f2.h("Created new Crashlytics installation ID: " + str2);
        sharedPreferences.edit().putString("crashlytics.installation.id", str2).putString("firebase.installation.id", str).apply();
        return str2;
    }

    private synchronized void h(String str, String str2, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        az f2 = az.f();
        f2.h("Migrating legacy Crashlytics installation ID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", str).putString("firebase.installation.id", str2).apply();
        sharedPreferences2.edit().remove("crashlytics.installation.id").remove("crashlytics.advertising.id").apply();
    }

    private String i(String str) {
        return str.replaceAll(g, "");
    }

    public String b() {
        return this.c;
    }

    public synchronized String c() {
        String str;
        String str2 = this.e;
        if (str2 != null) {
            return str2;
        }
        az.f().h("Determining Crashlytics installation ID...");
        SharedPreferences i = sz.i(this.b);
        kw<String> id = this.d.getId();
        String string = i.getString("firebase.installation.id", null);
        try {
            str = (String) h10.a(id);
        } catch (Exception e2) {
            az.f().j("Failed to retrieve Firebase Installations ID.", e2);
            str = string != 0 ? string : null;
        }
        if (string == null) {
            az.f().h("No cached Firebase Installations ID found.");
            SharedPreferences sharedPreferences = this.b.getSharedPreferences("com.crashlytics.prefs", 0);
            String string2 = sharedPreferences.getString("crashlytics.installation.id", null);
            if (string2 == null) {
                az.f().h("No legacy Crashlytics installation ID found, creating new ID.");
                this.e = a(str, i);
            } else {
                az.f().h("A legacy Crashlytics installation ID was found. Upgrading.");
                this.e = string2;
                h(string2, str, i, sharedPreferences);
            }
        } else if (string.equals(str)) {
            this.e = i.getString("crashlytics.installation.id", null);
            az.f().h("Firebase Installations ID is unchanged from previous startup.");
            if (this.e == null) {
                az.f().h("Crashlytics installation ID was null, creating new ID.");
                this.e = a(str, i);
            }
        } else {
            this.e = a(str, i);
        }
        az f2 = az.f();
        f2.h("Crashlytics installation ID is " + this.e);
        return this.e;
    }

    public String d() {
        return this.a.a(this.b);
    }

    public String e() {
        return String.format(Locale.US, "%s/%s", i(Build.MANUFACTURER), i(Build.MODEL));
    }

    public String f() {
        return i(Build.VERSION.INCREMENTAL);
    }

    public String g() {
        return i(Build.VERSION.RELEASE);
    }
}
