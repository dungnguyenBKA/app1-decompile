.class public Lcom/google/firebase/remoteconfig/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/e$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/google/firebase/remoteconfig/internal/o;

.field private c:Lkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkw<",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/e;->d:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/e;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/remoteconfig/internal/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/e;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/e;->b:Lcom/google/firebase/remoteconfig/internal/o;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/e;->c:Lkw;

    return-void
.end method

.method private static a(Lkw;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lkw<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/remoteconfig/internal/e$b;-><init>(Lcom/google/firebase/remoteconfig/internal/e$a;)V

    .line 2
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/e;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lkw;->e(Ljava/util/concurrent/Executor;Lhw;)Lkw;

    .line 3
    invoke-virtual {p0, v1, v0}, Lkw;->c(Ljava/util/concurrent/Executor;Lgw;)Lkw;

    .line 4
    invoke-virtual {p0, v1, v0}, Lkw;->a(Ljava/util/concurrent/Executor;Lfw;)Lkw;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/internal/e$b;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lkw;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lkw;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lkw;->i()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Task await timed out."

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized e(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/remoteconfig/internal/o;)Lcom/google/firebase/remoteconfig/internal/e;
    .locals 4

    const-class v0, Lcom/google/firebase/remoteconfig/internal/e;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/o;->b()Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/firebase/remoteconfig/internal/e;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lcom/google/firebase/remoteconfig/internal/e;

    invoke-direct {v3, p0, p1}, Lcom/google/firebase/remoteconfig/internal/e;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/remoteconfig/internal/o;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/internal/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic f(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/lang/Void;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/e;->b:Lcom/google/firebase/remoteconfig/internal/o;

    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->e(Lcom/google/firebase/remoteconfig/internal/f;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method static g(Lcom/google/firebase/remoteconfig/internal/e;ZLcom/google/firebase/remoteconfig/internal/f;)Lkw;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/e;->c:Lkw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 4
    :cond_0
    :goto_0
    invoke-static {p2}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {v0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->c:Lkw;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->b:Lcom/google/firebase/remoteconfig/internal/o;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/o;->a()Ljava/lang/Void;

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized c()Lkw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->c:Lkw;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkw;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->c:Lkw;

    invoke-virtual {v0}, Lkw;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/e;->b:Lcom/google/firebase/remoteconfig/internal/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/c;->a(Lcom/google/firebase/remoteconfig/internal/o;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lnw;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->c:Lkw;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->c:Lkw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/google/firebase/remoteconfig/internal/f;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->c:Lkw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->c:Lkw;

    invoke-virtual {v0}, Lkw;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/f;

    monitor-exit p0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/e;->c()Lkw;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-static {v0, v2, v3, v1}, Lcom/google/firebase/remoteconfig/internal/e;->a(Lkw;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/f;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public h(Lcom/google/firebase/remoteconfig/internal/f;)Lkw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ")",
            "Lkw<",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/internal/a;->a(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lnw;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/e;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    invoke-static {p0, v2, p1}, Lcom/google/firebase/remoteconfig/internal/b;->b(Lcom/google/firebase/remoteconfig/internal/e;ZLcom/google/firebase/remoteconfig/internal/f;)Ljw;

    move-result-object p1

    .line 2
    invoke-virtual {v0, v1, p1}, Lkw;->o(Ljava/util/concurrent/Executor;Ljw;)Lkw;

    move-result-object p1

    return-object p1
.end method
