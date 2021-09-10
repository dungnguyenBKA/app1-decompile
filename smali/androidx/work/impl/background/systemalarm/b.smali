.class public Landroidx/work/impl/background/systemalarm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/a;


# static fields
.field private static final e:Ljava/lang/String;

.field public static final synthetic f:I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CommandHandler"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/b;->c:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/b;->d:Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_CONSTRAINTS_CHANGED"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_DELAY_MET"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_SCHEDULE_WORK"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1, p2}, Landroidx/work/impl/a;->c(Ljava/lang/String;Z)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method f(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/e;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "Handling constraints changed %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, v2}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Landroidx/work/impl/background/systemalarm/c;

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    invoke-direct {p1, v0, p2, p3}, Landroidx/work/impl/background/systemalarm/c;-><init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/e;)V

    .line 5
    invoke-virtual {p1}, Landroidx/work/impl/background/systemalarm/c;->a()V

    goto/16 :goto_6

    :cond_0
    const-string v1, "ACTION_RESCHEDULE"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "Handling reschedule %s, %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/e;->g()Landroidx/work/impl/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/i;->m()V

    goto/16 :goto_6

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "KEY_WORKSPEC_ID"

    .line 10
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_4

    .line 12
    aget-object v7, v5, v6

    .line 13
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_6

    .line 14
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    const-string p3, "Invalid request for %s, requires %s."

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "KEY_WORKSPEC_ID"

    aput-object v0, v1, v2

    .line 15
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array v0, v3, [Ljava/lang/Throwable;

    .line 16
    invoke-virtual {p1, p2, p3, v0}, Landroidx/work/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_6
    const-string v1, "ACTION_SCHEDULE_WORK"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_WORKSPEC_ID"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-string v6, "Handling schedule work for %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v5, v6}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/e;->g()Landroidx/work/impl/i;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/room/g;->c()V

    .line 24
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v5

    .line 25
    check-cast v5, Le6;

    invoke-virtual {v5, p1}, Le6;->j(Ljava/lang/String;)Lc6;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "Skipping scheduling "

    if-nez v5, :cond_7

    .line 26
    :try_start_1
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it\'s no longer in the DB"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, v1, p1, p3}, Landroidx/work/h;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_3
    invoke-virtual {v0}, Landroidx/room/g;->g()V

    goto/16 :goto_6

    .line 28
    :cond_7
    :try_start_2
    iget-object v7, v5, Lc6;->b:Landroidx/work/m;

    invoke-virtual {v7}, Landroidx/work/m;->a()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 29
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "because it is finished."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, v1, p1, p3}, Landroidx/work/h;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_3

    .line 30
    :cond_8
    invoke-virtual {v5}, Lc6;->a()J

    move-result-wide v6

    .line 31
    invoke-virtual {v5}, Lc6;->b()Z

    move-result v5

    if-nez v5, :cond_9

    .line 32
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p2

    const-string v5, "Setting up Alarms for %s at %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 34
    invoke-virtual {p2, v1, v2, v3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 35
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/e;->g()Landroidx/work/impl/i;

    move-result-object p3

    invoke-static {p2, p3, p1, v6, v7}, Landroidx/work/impl/background/systemalarm/a;->c(Landroid/content/Context;Landroidx/work/impl/i;Ljava/lang/String;J)V

    goto :goto_4

    .line 36
    :cond_9
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v5

    const-string v8, "Opportunistically setting an alarm for %s at %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 37
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v2

    .line 38
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 39
    invoke-virtual {v5, v1, v2, v3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 40
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    .line 41
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/e;->g()Landroidx/work/impl/i;

    move-result-object v2

    .line 42
    invoke-static {v1, v2, p1, v6, v7}, Landroidx/work/impl/background/systemalarm/a;->c(Landroid/content/Context;Landroidx/work/impl/i;Ljava/lang/String;J)V

    .line 43
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 44
    new-instance v1, Landroidx/work/impl/background/systemalarm/e$b;

    invoke-direct {v1, p3, p1, p2}, Landroidx/work/impl/background/systemalarm/e$b;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {p3, v1}, Landroidx/work/impl/background/systemalarm/e;->j(Ljava/lang/Runnable;)V

    .line 45
    :goto_4
    invoke-virtual {v0}, Landroidx/room/g;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 46
    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 47
    throw p1

    :cond_a
    const-string v1, "ACTION_DELAY_MET"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 50
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/b;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v0, "KEY_WORKSPEC_ID"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    const-string v5, "Handing delay met for %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v5, v6}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 53
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 54
    new-instance v0, Landroidx/work/impl/background/systemalarm/d;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    invoke-direct {v0, v2, p2, p1, p3}, Landroidx/work/impl/background/systemalarm/d;-><init>(Landroid/content/Context;ILjava/lang/String;Landroidx/work/impl/background/systemalarm/e;)V

    .line 55
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/d;->f()V

    goto :goto_5

    .line 57
    :cond_b
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p2

    const-string p3, "WorkSpec %s is already being handled for ACTION_DELAY_MET"

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 58
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Throwable;

    .line 59
    invoke-virtual {p2, v4, p1, p3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 60
    :goto_5
    monitor-exit v1

    goto/16 :goto_6

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_c
    const-string v1, "ACTION_STOP_WORK"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "KEY_WORKSPEC_ID"

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v2, "Handing stopWork work for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1, v2}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/e;->g()Landroidx/work/impl/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/work/impl/i;->q(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/b;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/e;->g()Landroidx/work/impl/i;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;Landroidx/work/impl/i;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3, p1, v3}, Landroidx/work/impl/background/systemalarm/e;->c(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_d
    const-string p3, "ACTION_EXECUTION_COMPLETED"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "KEY_WORKSPEC_ID"

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_NEEDS_RESCHEDULE"

    .line 71
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 72
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v1

    sget-object v5, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "Handling onExecutionCompleted %s, %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Throwable;

    .line 74
    invoke-virtual {v1, v5, p1, p2}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {p0, v0, p3}, Landroidx/work/impl/background/systemalarm/b;->c(Ljava/lang/String;Z)V

    goto :goto_6

    .line 76
    :cond_e
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p2

    sget-object p3, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    const-string v0, "Ignoring intent %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Throwable;

    invoke-virtual {p2, p3, p1, v0}, Landroidx/work/h;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method
