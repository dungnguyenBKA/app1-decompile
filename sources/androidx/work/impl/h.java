package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.impl.utils.f;

public class h {
    public static d4 a = new a(1, 2);
    public static d4 b = new b(3, 4);
    public static d4 c = new c(4, 5);

    static class a extends d4 {
        a(int i, int i2) {
            super(i, i2);
        }

        @Override // defpackage.d4
        public void a(h4 h4Var) {
            h4Var.execSQL("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            h4Var.execSQL("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            h4Var.execSQL("DROP TABLE IF EXISTS alarmInfo");
            h4Var.execSQL("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    static class b extends d4 {
        b(int i, int i2) {
            super(i, i2);
        }

        @Override // defpackage.d4
        public void a(h4 h4Var) {
            if (Build.VERSION.SDK_INT >= 23) {
                h4Var.execSQL("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    }

    static class c extends d4 {
        c(int i, int i2) {
            super(i, i2);
        }

        @Override // defpackage.d4
        public void a(h4 h4Var) {
            h4Var.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            h4Var.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    public static class d extends d4 {
        final Context c;

        public d(Context context, int i, int i2) {
            super(i, i2);
            this.c = context;
        }

        @Override // defpackage.d4
        public void a(h4 h4Var) {
            new f(this.c).c(true);
        }
    }
}
