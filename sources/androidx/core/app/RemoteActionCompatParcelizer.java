package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.a;
import java.util.Objects;

public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.a = (IconCompat) aVar.t(remoteActionCompat.a, 1);
        remoteActionCompat.b = aVar.k(remoteActionCompat.b, 2);
        remoteActionCompat.c = aVar.k(remoteActionCompat.c, 3);
        remoteActionCompat.d = (PendingIntent) aVar.p(remoteActionCompat.d, 4);
        remoteActionCompat.e = aVar.g(remoteActionCompat.e, 5);
        remoteActionCompat.f = aVar.g(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, a aVar) {
        Objects.requireNonNull(aVar);
        aVar.I(remoteActionCompat.a, 1);
        aVar.A(remoteActionCompat.b, 2);
        aVar.A(remoteActionCompat.c, 3);
        aVar.E(remoteActionCompat.d, 4);
        aVar.w(remoteActionCompat.e, 5);
        aVar.w(remoteActionCompat.f, 6);
    }
}
