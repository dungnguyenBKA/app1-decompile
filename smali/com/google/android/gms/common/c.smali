.class public Lcom/google/android/gms/common/c;
.super Lcom/google/android/gms/common/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/c$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;

.field private static final d:Lcom/google/android/gms/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/c;->c:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/c;->d:Lcom/google/android/gms/common/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/d;-><init>()V

    return-void
.end method

.method public static g()Lcom/google/android/gms/common/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/c;->d:Lcom/google/android/gms/common/c;

    return-object v0
.end method

.method static j(Landroid/content/Context;ILcom/google/android/gms/common/internal/e;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/d;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eq p1, v4, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const v1, 0x104000a

    .line 10
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    const v1, 0x7f0e003e

    .line 11
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    const v1, 0x7f0e0048

    .line 12
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_6
    const v1, 0x7f0e0041

    .line 13
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_7

    .line 14
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 15
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/d;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 16
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 17
    :cond_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static k(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object p0

    .line 4
    invoke-static {p1, p3}, Lcom/google/android/gms/common/i;->u1(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/i;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/i;->t1(Landroidx/fragment/app/g;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 7
    invoke-static {p1, p3}, Lcom/google/android/gms/common/b;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/b;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final l(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/google/android/gms/common/c$a;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/common/c$a;-><init>(Lcom/google/android/gms/common/c;Landroid/content/Context;)V

    const-wide/32 v1, 0x1d4c0

    .line 2
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    if-nez p3, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 4
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/d;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/d;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "notification"

    .line 7
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 8
    new-instance v5, Landroidx/core/app/g;

    const/4 v6, 0x0

    .line 9
    invoke-direct {v5, p1, v6}, Landroidx/core/app/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v0}, Landroidx/core/app/g;->i(Z)Landroidx/core/app/g;

    .line 11
    invoke-virtual {v5, v0}, Landroidx/core/app/g;->c(Z)Landroidx/core/app/g;

    .line 12
    invoke-virtual {v5, v1}, Landroidx/core/app/g;->g(Ljava/lang/CharSequence;)Landroidx/core/app/g;

    new-instance v1, Landroidx/core/app/f;

    invoke-direct {v1}, Landroidx/core/app/f;-><init>()V

    .line 13
    invoke-virtual {v1, v2}, Landroidx/core/app/f;->b(Ljava/lang/CharSequence;)Landroidx/core/app/f;

    invoke-virtual {v5, v1}, Landroidx/core/app/g;->l(Landroidx/core/app/h;)Landroidx/core/app/g;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/util/c;->g(Landroid/content/Context;)Z

    move-result v1

    const/4 v6, 0x2

    if-eqz v1, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/common/util/c;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/n;->j(Z)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v1}, Landroidx/core/app/g;->k(I)Landroidx/core/app/g;

    .line 17
    invoke-virtual {v5, v6}, Landroidx/core/app/g;->j(I)Landroidx/core/app/g;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/common/util/c;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0700ad

    const v2, 0x7f0e004d

    .line 19
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 20
    iget-object v3, v5, Landroidx/core/app/g;->b:Ljava/util/ArrayList;

    new-instance v7, Landroidx/core/app/e;

    invoke-direct {v7, v1, v2, p3}, Landroidx/core/app/e;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {v5, p3}, Landroidx/core/app/g;->e(Landroid/app/PendingIntent;)Landroidx/core/app/g;

    goto :goto_0

    :cond_4
    const v1, 0x108008a

    .line 22
    invoke-virtual {v5, v1}, Landroidx/core/app/g;->k(I)Landroidx/core/app/g;

    const v1, 0x7f0e0045

    .line 23
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/core/app/g;->m(Ljava/lang/CharSequence;)Landroidx/core/app/g;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroidx/core/app/g;->n(J)Landroidx/core/app/g;

    .line 25
    invoke-virtual {v5, p3}, Landroidx/core/app/g;->e(Landroid/app/PendingIntent;)Landroidx/core/app/g;

    .line 26
    invoke-virtual {v5, v2}, Landroidx/core/app/g;->f(Ljava/lang/CharSequence;)Landroidx/core/app/g;

    .line 27
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/c;->c()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 28
    invoke-static {}, Lcom/google/android/gms/common/util/c;->c()Z

    move-result p3

    invoke-static {p3}, Lcom/google/android/gms/common/internal/n;->j(Z)V

    .line 29
    sget-object p3, Lcom/google/android/gms/common/c;->c:Ljava/lang/Object;

    monitor-enter p3

    .line 30
    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "com.google.android.gms.availability"

    .line 31
    invoke-virtual {v4, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0e0044

    .line 33
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_5

    .line 34
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-direct {v1, p3, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    .line 35
    :cond_5
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 36
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 38
    :cond_6
    :goto_1
    invoke-virtual {v5, p3}, Landroidx/core/app/g;->d(Ljava/lang/String;)Landroidx/core/app/g;

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 40
    :cond_7
    :goto_2
    invoke-virtual {v5}, Landroidx/core/app/g;->a()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v0, :cond_8

    if-eq p2, v6, :cond_8

    const/4 p3, 0x3

    if-eq p2, p3, :cond_8

    const p2, 0x9b6d

    goto :goto_3

    :cond_8
    const/16 p2, 0x28c4

    .line 41
    sget-object p3, Lcom/google/android/gms/common/g;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    :goto_3
    invoke-virtual {v4, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    .line 2
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/common/d;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/c;->e(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public e(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/d;->e(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public f(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "d"

    .line 1
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/e;->a(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/e;

    move-result-object p3

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/c;->j(Landroid/content/Context;ILcom/google/android/gms/common/internal/e;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    const-string v0, "d"

    .line 1
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/e;->a(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/e;

    move-result-object p3

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/c;->j(Landroid/content/Context;ILcom/google/android/gms/common/internal/e;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 4
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/c;->k(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public i(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "n"

    .line 1
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/c;->l(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public final m(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->k0()Z

    move-result v0

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->j0()Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->o()I

    move-result v0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->o()I

    move-result p2

    .line 7
    sget v3, Lcom/google/android/gms/common/api/GoogleApiActivity;->c:I

    .line 8
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "pending_intent"

    .line 9
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "failing_client_id"

    .line 10
    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "notify_manager"

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v3, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-static {p1, v2, v3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/c;->l(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return v0

    :cond_2
    return v2
.end method
