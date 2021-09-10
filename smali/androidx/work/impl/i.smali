.class public Landroidx/work/impl/i;
.super Landroidx/work/n;
.source "SourceFile"


# static fields
.field private static j:Landroidx/work/impl/i;

.field private static k:Landroidx/work/impl/i;

.field private static final l:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/work/b;

.field private c:Landroidx/work/impl/WorkDatabase;

.field private d:Lm6;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/work/impl/c;

.field private g:Landroidx/work/impl/utils/f;

.field private h:Z

.field private i:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Lm6;Z)V
    .locals 12

    move-object v0, p0

    move-object v7, p3

    .line 1
    invoke-direct {p0}, Landroidx/work/n;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Landroidx/work/b;->f()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 4
    sget v3, Landroidx/work/impl/WorkDatabase;->k:I

    .line 5
    const-class v3, Landroidx/work/impl/WorkDatabase;

    if-eqz p4, :cond_0

    .line 6
    invoke-static {v1, v3}, Landroidx/room/f;->b(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/g$a;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroidx/room/g$a;->c()Landroidx/room/g$a;

    goto :goto_0

    :cond_0
    const-string v4, "androidx.work.workdb"

    .line 8
    invoke-static {v1, v3, v4}, Landroidx/room/f;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/g$a;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v2}, Landroidx/room/g$a;->f(Ljava/util/concurrent/Executor;)Landroidx/room/g$a;

    move-object v2, v3

    .line 10
    :goto_0
    new-instance v3, Landroidx/work/impl/g;

    invoke-direct {v3}, Landroidx/work/impl/g;-><init>()V

    .line 11
    invoke-virtual {v2, v3}, Landroidx/room/g$a;->a(Landroidx/room/g$b;)Landroidx/room/g$a;

    const/4 v3, 0x1

    new-array v4, v3, [Ld4;

    sget-object v5, Landroidx/work/impl/h;->a:Ld4;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    .line 12
    invoke-virtual {v2, v4}, Landroidx/room/g$a;->b([Ld4;)Landroidx/room/g$a;

    new-array v4, v3, [Ld4;

    new-instance v5, Landroidx/work/impl/h$d;

    const/4 v6, 0x3

    const/4 v9, 0x2

    invoke-direct {v5, v1, v9, v6}, Landroidx/work/impl/h$d;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v8

    .line 13
    invoke-virtual {v2, v4}, Landroidx/room/g$a;->b([Ld4;)Landroidx/room/g$a;

    new-array v4, v3, [Ld4;

    sget-object v5, Landroidx/work/impl/h;->b:Ld4;

    aput-object v5, v4, v8

    .line 14
    invoke-virtual {v2, v4}, Landroidx/room/g$a;->b([Ld4;)Landroidx/room/g$a;

    new-array v4, v3, [Ld4;

    sget-object v5, Landroidx/work/impl/h;->c:Ld4;

    aput-object v5, v4, v8

    .line 15
    invoke-virtual {v2, v4}, Landroidx/room/g$a;->b([Ld4;)Landroidx/room/g$a;

    new-array v4, v3, [Ld4;

    new-instance v5, Landroidx/work/impl/h$d;

    const/4 v6, 0x5

    const/4 v10, 0x6

    invoke-direct {v5, v1, v6, v10}, Landroidx/work/impl/h$d;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v8

    .line 16
    invoke-virtual {v2, v4}, Landroidx/room/g$a;->b([Ld4;)Landroidx/room/g$a;

    .line 17
    invoke-virtual {v2}, Landroidx/room/g$a;->e()Landroidx/room/g$a;

    .line 18
    invoke-virtual {v2}, Landroidx/room/g$a;->d()Landroidx/room/g;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/work/impl/WorkDatabase;

    .line 19
    new-instance v2, Landroidx/work/h$a;

    invoke-virtual {p2}, Landroidx/work/b;->e()I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/work/h$a;-><init>(I)V

    invoke-static {v2}, Landroidx/work/h;->e(Landroidx/work/h;)V

    new-array v2, v9, [Landroidx/work/impl/d;

    .line 20
    invoke-static {v1, p0}, Landroidx/work/impl/e;->a(Landroid/content/Context;Landroidx/work/impl/i;)Landroidx/work/impl/d;

    move-result-object v4

    aput-object v4, v2, v8

    new-instance v4, Lz4;

    invoke-direct {v4, v1, p3, p0}, Lz4;-><init>(Landroid/content/Context;Lm6;Landroidx/work/impl/i;)V

    aput-object v4, v2, v3

    .line 21
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 22
    new-instance v11, Landroidx/work/impl/c;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v10

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/c;-><init>(Landroid/content/Context;Landroidx/work/b;Lm6;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 24
    iput-object v1, v0, Landroidx/work/impl/i;->a:Landroid/content/Context;

    move-object v2, p2

    .line 25
    iput-object v2, v0, Landroidx/work/impl/i;->b:Landroidx/work/b;

    .line 26
    iput-object v7, v0, Landroidx/work/impl/i;->d:Lm6;

    .line 27
    iput-object v10, v0, Landroidx/work/impl/i;->c:Landroidx/work/impl/WorkDatabase;

    .line 28
    iput-object v9, v0, Landroidx/work/impl/i;->e:Ljava/util/List;

    .line 29
    iput-object v11, v0, Landroidx/work/impl/i;->f:Landroidx/work/impl/c;

    .line 30
    new-instance v2, Landroidx/work/impl/utils/f;

    invoke-direct {v2, v1}, Landroidx/work/impl/utils/f;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroidx/work/impl/i;->g:Landroidx/work/impl/utils/f;

    .line 31
    iput-boolean v8, v0, Landroidx/work/impl/i;->h:Z

    .line 32
    new-instance v2, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {v2, v1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/i;)V

    move-object v1, v7

    check-cast v1, Ln6;

    invoke-virtual {v1, v2}, Ln6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Landroidx/work/impl/i;
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Landroidx/work/impl/i;->j:Landroidx/work/impl/i;

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v1, p0, Landroidx/work/b$b;

    if-eqz v1, :cond_1

    .line 8
    move-object v1, p0

    check-cast v1, Landroidx/work/b$b;

    .line 9
    invoke-interface {v1}, Landroidx/work/b$b;->a()Landroidx/work/b;

    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Landroidx/work/impl/i;->k(Landroid/content/Context;Landroidx/work/b;)V

    .line 11
    invoke-static {p0}, Landroidx/work/impl/i;->e(Landroid/content/Context;)Landroidx/work/impl/i;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 15
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2
.end method

.method public static k(Landroid/content/Context;Landroidx/work/b;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroidx/work/impl/i;->j:Landroidx/work/impl/i;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class levelJavadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    sget-object v1, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Landroidx/work/impl/i;

    new-instance v2, Ln6;

    .line 7
    invoke-virtual {p1}, Landroidx/work/b;->f()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3}, Ln6;-><init>(Ljava/util/concurrent/Executor;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 9
    invoke-direct {v1, p0, p1, v2, v3}, Landroidx/work/impl/i;-><init>(Landroid/content/Context;Landroidx/work/b;Lm6;Z)V

    .line 10
    sput-object v1, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    .line 11
    :cond_2
    sget-object p0, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    sput-object p0, Landroidx/work/impl/i;->j:Landroidx/work/impl/i;

    .line 12
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/work/k;
    .locals 1

    .line 1
    invoke-static {p1, p0}, Landroidx/work/impl/utils/a;->b(Ljava/lang/String;Landroidx/work/impl/i;)Landroidx/work/impl/utils/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/work/impl/i;->d:Lm6;

    check-cast v0, Ln6;

    invoke-virtual {v0, p1}, Ln6;->a(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Landroidx/work/impl/utils/a;->c()Landroidx/work/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Landroidx/work/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/o;",
            ">;)",
            "Landroidx/work/k;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/work/impl/f;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/f;-><init>(Landroidx/work/impl/i;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/work/impl/f;->a()Landroidx/work/k;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d()Landroidx/work/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->b:Landroidx/work/b;

    return-object v0
.end method

.method public f()Landroidx/work/impl/utils/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->g:Landroidx/work/impl/utils/f;

    return-object v0
.end method

.method public g()Landroidx/work/impl/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->f:Landroidx/work/impl/c;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->e:Ljava/util/List;

    return-object v0
.end method

.method public i()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->c:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public j()Lm6;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->d:Lm6;

    return-object v0
.end method

.method public l()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Landroidx/work/impl/i;->h:Z

    .line 3
    iget-object v1, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/i;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroidx/work/impl/background/systemjob/b;->b(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/i;->c:Landroidx/work/impl/WorkDatabase;

    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v0

    check-cast v0, Le6;

    invoke-virtual {v0}, Le6;->o()I

    .line 6
    iget-object v0, p0, Landroidx/work/impl/i;->b:Landroidx/work/b;

    .line 7
    iget-object v1, p0, Landroidx/work/impl/i;->c:Landroidx/work/impl/WorkDatabase;

    .line 8
    iget-object v2, p0, Landroidx/work/impl/i;->e:Ljava/util/List;

    .line 9
    invoke-static {v0, v1, v2}, Landroidx/work/impl/e;->b(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public n(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 3
    iget-boolean v1, p0, Landroidx/work/impl/i;->h:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
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

.method public o(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->d:Lm6;

    new-instance v1, Landroidx/work/impl/utils/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/utils/h;-><init>(Landroidx/work/impl/i;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 2
    check-cast v0, Ln6;

    invoke-virtual {v0, v1}, Ln6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->d:Lm6;

    new-instance v1, Landroidx/work/impl/utils/h;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/utils/h;-><init>(Landroidx/work/impl/i;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 2
    check-cast v0, Ln6;

    invoke-virtual {v0, v1}, Ln6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/i;->d:Lm6;

    new-instance v1, Landroidx/work/impl/utils/i;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/utils/i;-><init>(Landroidx/work/impl/i;Ljava/lang/String;)V

    check-cast v0, Ln6;

    invoke-virtual {v0, v1}, Ln6;->a(Ljava/lang/Runnable;)V

    return-void
.end method
