package androidx.work.impl;

import androidx.room.g;
import java.util.concurrent.TimeUnit;

public abstract class WorkDatabase extends g {
    private static final long j = TimeUnit.DAYS.toMillis(7);
    public static final /* synthetic */ int k = 0;

    static String q() {
        StringBuilder q = ic.q("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < ");
        q.append(System.currentTimeMillis() - j);
        q.append(" AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
        return q.toString();
    }

    public abstract u5 p();

    public abstract x5 r();

    public abstract a6 s();

    public abstract d6 t();

    public abstract g6 u();
}
