.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroidx/work/impl/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 4
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;)V
    .locals 5

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/high16 v1, 0x8000000

    .line 2
    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->e:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    const-string v4, "Performing cleanup operations."

    invoke-virtual {v0, v1, v4, v3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/b;->c(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroidx/room/g;->c()V

    .line 7
    :try_start_0
    check-cast v1, Le6;

    invoke-virtual {v1}, Le6;->e()Ljava/util/List;

    move-result-object v3

    .line 8
    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 9
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc6;

    .line 10
    sget-object v7, Landroidx/work/m;->b:Landroidx/work/m;

    new-array v8, v5, [Ljava/lang/String;

    iget-object v9, v6, Lc6;->a:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-virtual {v1, v7, v8}, Le6;->s(Landroidx/work/m;[Ljava/lang/String;)I

    .line 11
    iget-object v6, v6, Lc6;->a:Ljava/lang/String;

    const-wide/16 v7, -0x1

    invoke-virtual {v1, v6, v7, v8}, Le6;->n(Ljava/lang/String;J)I

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 14
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/utils/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Throwable;

    const-string v4, "Rescheduling Workers."

    invoke-virtual {v0, v1, v4, v3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->m()V

    .line 17
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/utils/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/work/impl/utils/f;->c(Z)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Landroid/content/Context;

    const/high16 v1, 0x20000000

    invoke-static {v0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 19
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/utils/ForceStopRunnable;->b(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    .line 20
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Application was force-stopped, rescheduling."

    invoke-virtual {v0, v1, v3, v2}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 21
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->m()V

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    .line 22
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Found unfinished work, scheduling it."

    invoke-virtual {v0, v1, v3, v2}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 23
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    .line 24
    invoke-virtual {v0}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    .line 25
    invoke-virtual {v1}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    .line 26
    invoke-virtual {v2}, Landroidx/work/impl/i;->h()Ljava/util/List;

    move-result-object v2

    .line 27
    invoke-static {v0, v1, v2}, Landroidx/work/impl/e;->b(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 28
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->l()V

    return-void

    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 30
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
