package defpackage;

import com.google.android.datatransport.runtime.backends.e;
import com.google.android.datatransport.runtime.backends.m;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import javax.inject.Inject;

/* renamed from: xt  reason: default package */
public class xt implements zt {
    private static final Logger f = Logger.getLogger(mt.class.getName());
    private final s a;
    private final Executor b;
    private final e c;
    private final eu d;
    private final lv e;

    @Inject
    public xt(Executor executor, e eVar, s sVar, eu euVar, lv lvVar) {
        this.b = executor;
        this.c = eVar;
        this.a = sVar;
        this.d = euVar;
        this.e = lvVar;
    }

    static /* synthetic */ Object b(xt xtVar, it itVar, et etVar) {
        xtVar.d.T(itVar, etVar);
        xtVar.a.a(itVar, 1);
        return null;
    }

    static /* synthetic */ void c(xt xtVar, it itVar, cs csVar, et etVar) {
        try {
            m a2 = xtVar.c.a(itVar.b());
            if (a2 == null) {
                String format = String.format("Transport backend '%s' is not registered", itVar.b());
                f.warning(format);
                csVar.a(new IllegalArgumentException(format));
                return;
            }
            xtVar.e.j(wt.a(xtVar, itVar, a2.b(etVar)));
            csVar.a(null);
        } catch (Exception e2) {
            Logger logger = f;
            StringBuilder q = ic.q("Error scheduling event ");
            q.append(e2.getMessage());
            logger.warning(q.toString());
            csVar.a(e2);
        }
    }

    @Override // defpackage.zt
    public void a(it itVar, et etVar, cs csVar) {
        this.b.execute(vt.a(this, itVar, csVar, etVar));
    }
}
