.class final Lld;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lld$b;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/util/concurrent/Executor;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lld$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lbe<",
            "*>;>;"
        }
    .end annotation
.end field

.field private e:Lbe$a;


# direct methods
.method constructor <init>(Z)V
    .locals 2

    .line 1
    new-instance v0, Lld$a;

    invoke-direct {v0}, Lld$a;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lld;->c:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lld;->d:Ljava/lang/ref/ReferenceQueue;

    .line 6
    iput-boolean p1, p0, Lld;->a:Z

    .line 7
    iput-object v0, p0, Lld;->b:Ljava/util/concurrent/Executor;

    .line 8
    new-instance p1, Lmd;

    invoke-direct {p1, p0}, Lmd;-><init>(Lld;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/bumptech/glide/load/g;Lbe;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lbe<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lld$b;

    iget-object v1, p0, Lld;->d:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lld;->a:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lld$b;-><init>(Lcom/bumptech/glide/load/g;Lbe;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 2
    iget-object p2, p0, Lld;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lld$b;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, Lld$b;->c:Lhe;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b()V
    .locals 1

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lld;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lld$b;

    .line 2
    invoke-virtual {p0, v0}, Lld;->c(Lld$b;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method c(Lld$b;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lld;->c:Ljava/util/Map;

    iget-object v1, p1, Lld$b;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p1, Lld$b;->b:Z

    if-eqz v0, :cond_1

    iget-object v2, p1, Lld$b;->c:Lhe;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Lbe;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lld$b;->a:Lcom/bumptech/glide/load/g;

    iget-object v6, p0, Lld;->e:Lbe$a;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lbe;-><init>(Lhe;ZZLcom/bumptech/glide/load/g;Lbe$a;)V

    .line 6
    iget-object v1, p0, Lld;->e:Lbe$a;

    iget-object p1, p1, Lld$b;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, p1, v0}, Lbe$a;->a(Lcom/bumptech/glide/load/g;Lbe;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method d(Lbe$a;)V
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iput-object p1, p0, Lld;->e:Lbe$a;

    .line 4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    .line 7
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
