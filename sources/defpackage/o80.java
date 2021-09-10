package defpackage;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* renamed from: o80  reason: default package */
public final class o80 extends z60<Date> {
    public static final a70 b = new a();
    private final DateFormat a = new SimpleDateFormat("MMM d, yyyy");

    /* renamed from: o80$a */
    class a implements a70 {
        a() {
        }

        @Override // defpackage.a70
        public <T> z60<T> a(j60 j60, z80<T> z80) {
            if (z80.getRawType() == Date.class) {
                return new o80();
            }
            return null;
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.z60
    public Date b(a90 a90) {
        Date date;
        synchronized (this) {
            if (a90.x0() == b90.NULL) {
                a90.t0();
                date = null;
            } else {
                try {
                    date = new Date(this.a.parse(a90.v0()).getTime());
                } catch (ParseException e) {
                    throw new x60(e);
                }
            }
        }
        return date;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
    @Override // defpackage.z60
    public void c(c90 c90, Date date) {
        String str;
        Date date2 = date;
        synchronized (this) {
            if (date2 == null) {
                str = null;
            } else {
                str = this.a.format(date2);
            }
            c90.z0(str);
        }
    }
}
