package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class i implements d {
    private final Notification.Builder a;
    private final g b;
    private final List<Bundle> c = new ArrayList();
    private final Bundle d = new Bundle();

    i(g gVar) {
        ArrayList<String> arrayList;
        Notification.Action.Builder builder;
        Bundle bundle;
        RemoteInput[] remoteInputArr;
        this.b = gVar;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.a = new Notification.Builder(gVar.a, gVar.l);
        } else {
            this.a = new Notification.Builder(gVar.a);
        }
        Notification notification = gVar.n;
        this.a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(gVar.d).setContentText(gVar.e).setContentInfo(null).setContentIntent(gVar.f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setLargeIcon((Bitmap) null).setNumber(0).setProgress(0, 0, false);
        if (i < 21) {
            this.a.setSound(notification.sound, notification.audioStreamType);
        }
        this.a.setSubText(null).setUsesChronometer(false).setPriority(gVar.g);
        Iterator<e> it = gVar.b.iterator();
        while (it.hasNext()) {
            e next = it.next();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 20) {
                if (i2 >= 23) {
                    IconCompat c2 = next.c();
                    builder = new Notification.Action.Builder(c2 == null ? null : c2.e(), next.j, next.k);
                } else {
                    builder = new Notification.Action.Builder(next.i, next.j, next.k);
                }
                if (next.d() != null) {
                    l[] d2 = next.d();
                    if (d2 == null) {
                        remoteInputArr = null;
                    } else {
                        remoteInputArr = new RemoteInput[d2.length];
                        if (d2.length > 0) {
                            l lVar = d2[0];
                            throw null;
                        }
                    }
                    for (RemoteInput remoteInput : remoteInputArr) {
                        builder.addRemoteInput(remoteInput);
                    }
                }
                if (next.a != null) {
                    bundle = new Bundle(next.a);
                } else {
                    bundle = new Bundle();
                }
                bundle.putBoolean("android.support.allowGeneratedReplies", next.a());
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 24) {
                    builder.setAllowGeneratedReplies(next.a());
                }
                bundle.putInt("android.support.action.semanticAction", next.e());
                if (i3 >= 28) {
                    builder.setSemanticAction(next.e());
                }
                if (i3 >= 29) {
                    builder.setContextual(next.f());
                }
                bundle.putBoolean("android.support.action.showsUserInterface", next.f);
                builder.addExtras(bundle);
                this.a.addAction(builder.build());
            } else {
                this.c.add(j.d(this.a, next));
            }
        }
        Bundle bundle2 = gVar.k;
        if (bundle2 != null) {
            this.d.putAll(bundle2);
        }
        int i4 = Build.VERSION.SDK_INT;
        if (i4 < 20 && gVar.j) {
            this.d.putBoolean("android.support.localOnly", true);
        }
        this.a.setShowWhen(gVar.h);
        if (i4 < 21 && (arrayList = gVar.o) != null && !arrayList.isEmpty()) {
            Bundle bundle3 = this.d;
            ArrayList<String> arrayList2 = gVar.o;
            bundle3.putStringArray("android.people", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
        }
        if (i4 >= 20) {
            this.a.setLocalOnly(gVar.j).setGroup(null).setGroupSummary(false).setSortKey(null);
        }
        if (i4 >= 21) {
            this.a.setCategory(null).setColor(0).setVisibility(0).setPublicVersion(null).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = gVar.o.iterator();
            while (it2.hasNext()) {
                this.a.addPerson(it2.next());
            }
            if (gVar.c.size() > 0) {
                if (gVar.k == null) {
                    gVar.k = new Bundle();
                }
                Bundle bundle4 = gVar.k.getBundle("android.car.EXTENSIONS");
                bundle4 = bundle4 == null ? new Bundle() : bundle4;
                Bundle bundle5 = new Bundle();
                for (int i5 = 0; i5 < gVar.c.size(); i5++) {
                    bundle5.putBundle(Integer.toString(i5), j.b(gVar.c.get(i5)));
                }
                bundle4.putBundle("invisible_actions", bundle5);
                if (gVar.k == null) {
                    gVar.k = new Bundle();
                }
                gVar.k.putBundle("android.car.EXTENSIONS", bundle4);
                this.d.putBundle("android.car.EXTENSIONS", bundle4);
            }
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 24) {
            this.a.setExtras(gVar.k).setRemoteInputHistory(null);
        }
        if (i6 >= 26) {
            this.a.setBadgeIconType(0).setShortcutId(null).setTimeoutAfter(0).setGroupAlertBehavior(0);
            if (!TextUtils.isEmpty(gVar.l)) {
                this.a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i6 >= 29) {
            this.a.setAllowSystemGeneratedContextualActions(gVar.m);
            this.a.setBubbleMetadata(null);
        }
    }

    public Notification a() {
        Notification notification;
        h hVar = this.b.i;
        if (hVar != null) {
            hVar.a(this);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            notification = this.a.build();
        } else if (i >= 24) {
            notification = this.a.build();
        } else if (i >= 21) {
            this.a.setExtras(this.d);
            notification = this.a.build();
        } else if (i >= 20) {
            this.a.setExtras(this.d);
            notification = this.a.build();
        } else {
            SparseArray<Bundle> a2 = j.a(this.c);
            if (a2 != null) {
                this.d.putSparseParcelableArray("android.support.actionExtras", a2);
            }
            this.a.setExtras(this.d);
            notification = this.a.build();
        }
        Objects.requireNonNull(this.b);
        if (i >= 21 && hVar != null) {
            Objects.requireNonNull(this.b.i);
        }
        if (hVar != null) {
            Bundle bundle = notification.extras;
        }
        return notification;
    }

    public Notification.Builder b() {
        return this.a;
    }
}
