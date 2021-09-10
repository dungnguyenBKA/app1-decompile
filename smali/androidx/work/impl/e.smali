.class public Landroidx/work/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Schedulers"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/e;->a:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;Landroidx/work/impl/i;)Landroidx/work/impl/d;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 2
    new-instance v0, Landroidx/work/impl/background/systemjob/b;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/background/systemjob/b;-><init>(Landroid/content/Context;Landroidx/work/impl/i;)V

    .line 3
    const-class p1, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {p0, p1, v2}, Landroidx/work/impl/utils/e;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 4
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/e;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {p0, p1, v2, v1}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p1, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Class;

    .line 6
    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/d;

    .line 8
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/e;->a:Ljava/lang/String;

    const-string v4, "Created %s"

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "androidx.work.impl.background.gcm.GcmScheduler"

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/e;->a:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Throwable;

    aput-object p1, v4, v1

    const-string p1, "Unable to create GCM Scheduler"

    invoke-virtual {v0, v3, p1, v4}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    move-object v0, p1

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Landroidx/work/impl/background/systemalarm/f;

    invoke-direct {v0, p0}, Landroidx/work/impl/background/systemalarm/f;-><init>(Landroid/content/Context;)V

    .line 11
    const-class p1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-static {p0, p1, v2}, Landroidx/work/impl/utils/e;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 12
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/e;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Created SystemAlarmScheduler"

    invoke-virtual {p0, p1, v2, v1}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static b(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/b;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/d;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/room/g;->c()V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/b;->d()I

    move-result p0

    .line 5
    check-cast v0, Le6;

    invoke-virtual {v0, p0}, Le6;->c(I)Ljava/util/List;

    move-result-object p0

    .line 6
    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 8
    move-object v3, p0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc6;

    .line 9
    iget-object v4, v4, Lc6;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Le6;->n(Ljava/lang/String;J)I

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p1}, Landroidx/room/g;->g()V

    .line 12
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Lc6;

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lc6;

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/impl/d;

    .line 15
    invoke-interface {p2, p0}, Landroidx/work/impl/d;->a([Lc6;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 16
    invoke-virtual {p1}, Landroidx/room/g;->g()V

    .line 17
    throw p0

    :cond_3
    :goto_2
    return-void
.end method
