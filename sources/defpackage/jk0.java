package defpackage;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
/* renamed from: jk0  reason: default package */
public final class jk0 extends vj0 {
    final /* synthetic */ Socket k;

    jk0(Socket socket) {
        this.k = socket;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vj0
    public IOException m(@Nullable IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vj0
    public void n() {
        try {
            this.k.close();
        } catch (Exception e) {
            Logger logger = ik0.a;
            Level level = Level.WARNING;
            StringBuilder q = ic.q("Failed to close timed out socket ");
            q.append(this.k);
            logger.log(level, q.toString(), (Throwable) e);
        } catch (AssertionError e2) {
            if (ik0.d(e2)) {
                Logger logger2 = ik0.a;
                Level level2 = Level.WARNING;
                StringBuilder q2 = ic.q("Failed to close timed out socket ");
                q2.append(this.k);
                logger2.log(level2, q2.toString(), (Throwable) e2);
                return;
            }
            throw e2;
        }
    }
}
