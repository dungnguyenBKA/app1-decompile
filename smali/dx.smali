.class final Ldx;
.super Lkw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lkw<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lax<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private f:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkw;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldx;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lax;

    invoke-direct {v0}, Lax;-><init>()V

    iput-object v0, p0, Ldx;->b:Lax;

    return-void
.end method

.method private final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldx;->c:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Ldx;->b:Lax;

    invoke-virtual {v0, p0}, Lax;->a(Lkw;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lfw;)Lkw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lfw;",
            ")",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldx;->b:Lax;

    new-instance v1, Ltw;

    .line 2
    sget v2, Lex;->b:I

    .line 3
    invoke-direct {v1, p1, p2}, Ltw;-><init>(Ljava/util/concurrent/Executor;Lfw;)V

    .line 4
    invoke-virtual {v0, v1}, Lax;->b(Lbx;)V

    .line 5
    invoke-direct {p0}, Ldx;->u()V

    return-object p0
.end method

.method public final b(Lgw;)Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgw;",
            ")",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmw;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Ldx;->c(Ljava/util/concurrent/Executor;Lgw;)Lkw;

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Lgw;)Lkw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lgw;",
            ")",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldx;->b:Lax;

    new-instance v1, Lvw;

    .line 2
    sget v2, Lex;->b:I

    .line 3
    invoke-direct {v1, p1, p2}, Lvw;-><init>(Ljava/util/concurrent/Executor;Lgw;)V

    .line 4
    invoke-virtual {v0, v1}, Lax;->b(Lbx;)V

    .line 5
    invoke-direct {p0}, Ldx;->u()V

    return-object p0
.end method

.method public final d(Lhw;)Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw<",
            "-TTResult;>;)",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmw;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Ldx;->e(Ljava/util/concurrent/Executor;Lhw;)Lkw;

    return-object p0
.end method

.method public final e(Ljava/util/concurrent/Executor;Lhw;)Lkw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lhw<",
            "-TTResult;>;)",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldx;->b:Lax;

    new-instance v1, Lww;

    .line 2
    sget v2, Lex;->b:I

    .line 3
    invoke-direct {v1, p1, p2}, Lww;-><init>(Ljava/util/concurrent/Executor;Lhw;)V

    .line 4
    invoke-virtual {v0, v1}, Lax;->b(Lbx;)V

    .line 5
    invoke-direct {p0}, Ldx;->u()V

    return-object p0
.end method

.method public final f(Ldw;)Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ldw<",
            "TTResult;TTContinuationResult;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmw;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Ldx;->g(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/concurrent/Executor;Ldw;)Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ldw<",
            "TTResult;TTContinuationResult;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ldx;

    invoke-direct {v0}, Ldx;-><init>()V

    .line 2
    iget-object v1, p0, Ldx;->b:Lax;

    new-instance v2, Low;

    .line 3
    sget v3, Lex;->b:I

    .line 4
    invoke-direct {v2, p1, p2, v0}, Low;-><init>(Ljava/util/concurrent/Executor;Ldw;Ldx;)V

    .line 5
    invoke-virtual {v1, v2}, Lax;->b(Lbx;)V

    .line 6
    invoke-direct {p0}, Ldx;->u()V

    return-object v0
.end method

.method public final h(Ljava/util/concurrent/Executor;Ldw;)Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ldw<",
            "TTResult;",
            "Lkw<",
            "TTContinuationResult;>;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ldx;

    invoke-direct {v0}, Ldx;-><init>()V

    .line 2
    iget-object v1, p0, Ldx;->b:Lax;

    new-instance v2, Lpw;

    .line 3
    sget v3, Lex;->b:I

    .line 4
    invoke-direct {v2, p1, p2, v0}, Lpw;-><init>(Ljava/util/concurrent/Executor;Ldw;Ldx;)V

    .line 5
    invoke-virtual {v1, v2}, Lax;->b(Lbx;)V

    .line 6
    invoke-direct {p0}, Ldx;->u()V

    return-object v0
.end method

.method public final i()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ldx;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldx;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/n;->k(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v1, p0, Ldx;->d:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Ldx;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Ldx;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Liw;

    iget-object v2, p0, Ldx;->f:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Liw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldx;->d:Z

    return v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldx;->c:Z

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

.method public final m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldx;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ldx;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ldx;->f:Ljava/lang/Exception;

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

.method public final n(Ljw;)Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljw<",
            "TTResult;TTContinuationResult;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmw;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Ldx;->o(Ljava/util/concurrent/Executor;Ljw;)Lkw;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/util/concurrent/Executor;Ljw;)Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljw<",
            "TTResult;TTContinuationResult;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ldx;

    invoke-direct {v0}, Ldx;-><init>()V

    .line 2
    iget-object v1, p0, Ldx;->b:Lax;

    new-instance v2, Lzw;

    .line 3
    sget v3, Lex;->b:I

    .line 4
    invoke-direct {v2, p1, p2, v0}, Lzw;-><init>(Ljava/util/concurrent/Executor;Ljw;Ldx;)V

    .line 5
    invoke-virtual {v1, v2}, Lax;->b(Lbx;)V

    .line 6
    invoke-direct {p0}, Ldx;->u()V

    return-object v0
.end method

.method public final p(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Ldx;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Ldx;->c:Z

    .line 5
    iput-object p1, p0, Ldx;->f:Ljava/lang/Exception;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Ldx;->b:Lax;

    invoke-virtual {p1, p0}, Lax;->a(Lkw;)V

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {p0}, Lew;->a(Lkw;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldx;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ldx;->c:Z

    .line 4
    iput-object p1, p0, Ldx;->e:Ljava/lang/Object;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Ldx;->b:Lax;

    invoke-virtual {p1, p0}, Lax;->a(Lkw;)V

    return-void

    .line 7
    :cond_0
    :try_start_1
    invoke-static {p0}, Lew;->a(Lkw;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldx;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Ldx;->c:Z

    .line 5
    iput-boolean v1, p0, Ldx;->d:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Ldx;->b:Lax;

    invoke-virtual {v0, p0}, Lax;->a(Lkw;)V

    return v1

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final s(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Ldx;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 4
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Ldx;->c:Z

    .line 6
    iput-object p1, p0, Ldx;->f:Ljava/lang/Exception;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Ldx;->b:Lax;

    invoke-virtual {p1, p0}, Lax;->a(Lkw;)V

    return v1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldx;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldx;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Ldx;->c:Z

    .line 5
    iput-object p1, p0, Ldx;->e:Ljava/lang/Object;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Ldx;->b:Lax;

    invoke-virtual {p1, p0}, Lax;->a(Lkw;)V

    return v1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
