.class Landroidx/work/impl/background/systemalarm/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:Landroidx/work/impl/background/systemalarm/e;

.field private final d:Ld5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/c;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Landroidx/work/impl/background/systemalarm/c;->b:I

    .line 4
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/c;->c:Landroidx/work/impl/background/systemalarm/e;

    .line 5
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/e;->f()Lm6;

    move-result-object p2

    .line 6
    new-instance p3, Ld5;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Ld5;-><init>(Landroid/content/Context;Lm6;Lc5;)V

    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/c;->d:Ld5;

    return-void
.end method


# virtual methods
.method a()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->c:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->g()Landroidx/work/impl/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v0

    .line 3
    check-cast v0, Le6;

    invoke-virtual {v0}, Le6;->f()Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    .line 5
    sget v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->b:I

    .line 6
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc6;

    .line 7
    iget-object v9, v9, Lc6;->j:Landroidx/work/c;

    .line 8
    invoke-virtual {v9}, Landroidx/work/c;->f()Z

    move-result v11

    or-int/2addr v5, v11

    .line 9
    invoke-virtual {v9}, Landroidx/work/c;->g()Z

    move-result v11

    or-int/2addr v6, v11

    .line 10
    invoke-virtual {v9}, Landroidx/work/c;->i()Z

    move-result v11

    or-int/2addr v7, v11

    .line 11
    invoke-virtual {v9}, Landroidx/work/c;->b()Landroidx/work/i;

    move-result-object v9

    sget-object v11, Landroidx/work/i;->b:Landroidx/work/i;

    if-eq v9, v11, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    or-int/2addr v8, v9

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    .line 12
    :cond_2
    sget-object v3, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    .line 13
    new-instance v3, Landroid/content/Intent;

    const-string v9, "androidx.work.impl.background.systemalarm.UpdateProxies"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v9, Landroid/content/ComponentName;

    const-class v11, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    invoke-direct {v9, v1, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v9, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    .line 16
    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v9, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    .line 17
    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    .line 18
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY_NETWORK_STATE_PROXY_ENABLED"

    .line 19
    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->d:Ld5;

    invoke-virtual {v1, v0}, Ld5;->d(Ljava/util/List;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6;

    .line 25
    iget-object v3, v2, Lc6;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v2}, Lc6;->a()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3

    .line 27
    invoke-virtual {v2}, Lc6;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroidx/work/impl/background/systemalarm/c;->d:Ld5;

    .line 28
    invoke-virtual {v7, v3}, Ld5;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 29
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    .line 31
    iget-object v1, v1, Lc6;->a:Ljava/lang/String;

    .line 32
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/c;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/work/impl/background/systemalarm/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 33
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v3

    sget-object v5, Landroidx/work/impl/background/systemalarm/c;->e:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v4

    const-string v1, "Creating a delay_met command for workSpec with id (%s)"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Throwable;

    invoke-virtual {v3, v5, v1, v6}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 34
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/c;->c:Landroidx/work/impl/background/systemalarm/e;

    new-instance v3, Landroidx/work/impl/background/systemalarm/e$b;

    iget v5, p0, Landroidx/work/impl/background/systemalarm/c;->b:I

    invoke-direct {v3, v1, v2, v5}, Landroidx/work/impl/background/systemalarm/e$b;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    invoke-virtual {v1, v3}, Landroidx/work/impl/background/systemalarm/e;->j(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 35
    :cond_6
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/c;->d:Ld5;

    invoke-virtual {v0}, Ld5;->e()V

    return-void
.end method
