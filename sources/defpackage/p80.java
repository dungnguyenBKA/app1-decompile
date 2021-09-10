package defpackage;

import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* renamed from: p80  reason: default package */
public final class p80 extends z60<Time> {
    public static final a70 b = new a();
    private final DateFormat a = new SimpleDateFormat("hh:mm:ss a");

    /* renamed from: p80$a */
    class a implements a70 {
        a() {
        }

        @Override // defpackage.a70
        public <T> z60<T> a(j60 j60, z80<T> z80) {
            if (z80.getRawType() == Time.class) {
                return new p80();
            }
            return null;
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.z60
    public Time b(a90 a90) {
        synchronized (this) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                return null;
            }
            try {
                return new Time(this.a.parse(a90.v0()).getTime());
            } catch (ParseException e) {
                throw new x60(e);
            }
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
    @Override // defpackage.z60
    public void c(c90 c90, Time time) {
        String str;
        Time time2 = time;
        synchronized (this) {
            if (time2 == null) {
                str = null;
            } else {
                str = this.a.format(time2);
            }
            c90.z0(str);
        }
    }
}
