.class public abstract Landroidx/room/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/g$b;,
        Landroidx/room/g$d;,
        Landroidx/room/g$a;,
        Landroidx/room/g$c;
    }
.end annotation


# instance fields
.field protected volatile a:Lh4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;

.field private c:Li4;

.field private final d:Landroidx/room/e;

.field private e:Z

.field f:Z

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/g$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/g;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/g;->i:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroidx/room/g;->e()Landroidx/room/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/g;->d:Landroidx/room/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/room/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/g;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/g;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/room/g;->a()V

    .line 2
    iget-object v0, p0, Landroidx/room/g;->c:Li4;

    invoke-interface {v0}, Li4;->b()Lh4;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/room/g;->d:Landroidx/room/e;

    invoke-virtual {v1, v0}, Landroidx/room/e;->e(Lh4;)V

    .line 4
    invoke-interface {v0}, Lh4;->b()V

    return-void
.end method

.method public d(Ljava/lang/String;)Ll4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/g;->a()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/g;->b()V

    .line 3
    iget-object v0, p0, Landroidx/room/g;->c:Li4;

    invoke-interface {v0}, Li4;->b()Lh4;

    move-result-object v0

    invoke-interface {v0, p1}, Lh4;->l(Ljava/lang/String;)Ll4;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e()Landroidx/room/e;
.end method

.method protected abstract f(Landroidx/room/a;)Li4;
.end method

.method public g()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/g;->c:Li4;

    invoke-interface {v0}, Li4;->b()Lh4;

    move-result-object v0

    invoke-interface {v0}, Lh4;->G()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/room/g;->d:Landroidx/room/e;

    .line 4
    iget-object v1, v0, Landroidx/room/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Landroidx/room/e;->d:Landroidx/room/g;

    invoke-virtual {v1}, Landroidx/room/g;->j()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v0, v0, Landroidx/room/e;->j:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method h()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/g;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public i()Li4;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/g;->c:Li4;

    return-object v0
.end method

.method public j()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/g;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/g;->c:Li4;

    invoke-interface {v0}, Li4;->b()Lh4;

    move-result-object v0

    invoke-interface {v0}, Lh4;->R()Z

    move-result v0

    return v0
.end method

.method public l(Landroidx/room/a;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/g;->f(Landroidx/room/a;)Li4;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/g;->c:Li4;

    .line 2
    iget-object v1, p1, Landroidx/room/a;->g:Landroidx/room/g$c;

    sget-object v2, Landroidx/room/g$c;->d:Landroidx/room/g$c;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Li4;->a(Z)V

    .line 4
    iget-object v0, p1, Landroidx/room/a;->e:Ljava/util/List;

    iput-object v0, p0, Landroidx/room/g;->g:Ljava/util/List;

    .line 5
    iget-object v0, p1, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/g;->b:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v0, Landroidx/room/k;

    iget-object v2, p1, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2}, Landroidx/room/k;-><init>(Ljava/util/concurrent/Executor;)V

    .line 7
    iget-boolean p1, p1, Landroidx/room/a;->f:Z

    iput-boolean p1, p0, Landroidx/room/g;->e:Z

    .line 8
    iput-boolean v1, p0, Landroidx/room/g;->f:Z

    return-void
.end method

.method protected m(Lh4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/g;->d:Landroidx/room/e;

    invoke-virtual {v0, p1}, Landroidx/room/e;->b(Lh4;)V

    return-void
.end method

.method public n(Lk4;)Landroid/database/Cursor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/g;->a()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/g;->b()V

    .line 3
    iget-object v0, p0, Landroidx/room/g;->c:Li4;

    invoke-interface {v0}, Li4;->b()Lh4;

    move-result-object v0

    invoke-interface {v0, p1}, Lh4;->M(Lk4;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public o()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/g;->c:Li4;

    invoke-interface {v0}, Li4;->b()Lh4;

    move-result-object v0

    invoke-interface {v0}, Lh4;->A()V

    return-void
.end method
