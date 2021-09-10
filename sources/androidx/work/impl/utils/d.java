package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;

public class d {
    private final Context a;
    private SharedPreferences b;
    private boolean c;

    public d(Context context) {
        this.a = context;
    }

    private void a() {
        if (!this.c) {
            this.b = this.a.getSharedPreferences("androidx.work.util.id", 0);
            this.c = true;
        }
    }

    private int c(String str) {
        int i = 0;
        int i2 = this.b.getInt(str, 0);
        if (i2 != Integer.MAX_VALUE) {
            i = i2 + 1;
        }
        this.b.edit().putInt(str, i).apply();
        return i2;
    }

    public int b() {
        int c2;
        synchronized (d.class) {
            a();
            c2 = c("next_alarm_manager_id");
        }
        return c2;
    }

    public int d(int i, int i2) {
        synchronized (d.class) {
            a();
            int c2 = c("next_job_scheduler_id");
            if (c2 >= i) {
                if (c2 <= i2) {
                    i = c2;
                }
            }
            this.b.edit().putInt("next_job_scheduler_id", i + 1).apply();
        }
        return i;
    }
}
