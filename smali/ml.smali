.class public abstract Lml;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lml$d;,
        Lml$h;,
        Lml$e;,
        Lml$g;,
        Lml$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/ThreadFactory;

.field private static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/concurrent/Executor;

.field public static final i:Ljava/util/concurrent/Executor;

.field public static final j:Ljava/util/concurrent/Executor;

.field public static final k:Ljava/util/concurrent/Executor;

.field private static final l:Lml$e;

.field private static volatile m:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Lml$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lml$h<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile c:Lml$g;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v9, Lml$a;

    invoke-direct {v9}, Lml$a;-><init>()V

    sput-object v9, Lml;->f:Ljava/util/concurrent/ThreadFactory;

    .line 2
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v6, Lml;->g:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    move-object v0, v10

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v10, Lml;->h:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lml$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lml$f;-><init>(Lml$a;)V

    .line 5
    sput-object v0, Lml;->i:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    .line 6
    invoke-static {v2, v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lml;->j:Ljava/util/concurrent/Executor;

    const/4 v2, 0x6

    .line 7
    invoke-static {v2, v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lml;->k:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v2, Lml$e;

    invoke-direct {v2, v1}, Lml$e;-><init>(Lml$a;)V

    sput-object v2, Lml;->l:Lml$e;

    .line 9
    sput-object v0, Lml;->m:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lml$g;->b:Lml$g;

    iput-object v0, p0, Lml;->c:Lml$g;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lml;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lml;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lml$b;

    invoke-direct {v0, p0}, Lml$b;-><init>(Lml;)V

    iput-object v0, p0, Lml;->a:Lml$h;

    .line 6
    new-instance v1, Lml$c;

    invoke-direct {v1, p0, v0}, Lml$c;-><init>(Lml;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lml;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lml;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lml;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lml;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lml;->m(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method static c(Lml;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lml;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lml;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static d(Lml;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lml;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lml;->k(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lml;->l(Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object p1, Lml$g;->d:Lml$g;

    iput-object p1, p0, Lml;->c:Lml$g;

    return-void
.end method

.method public static h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lml;->m:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 1
    sget-object v0, Lml;->l:Lml$e;

    new-instance v1, Lml$d;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lml$d;-><init>(Lml;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method


# virtual methods
.method public final e(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lml;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lml;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected varargs abstract f([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs g([Ljava/lang/Object;)Lml;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lml<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lml;->m:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lml;->i(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lml;

    return-object p0
.end method

.method public final varargs i(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lml;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lml<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lml;->c:Lml$g;

    sget-object v1, Lml$g;->b:Lml$g;

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lml;->c:Lml$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    :goto_0
    sget-object v0, Lml$g;->c:Lml$g;

    iput-object v0, p0, Lml;->c:Lml$g;

    .line 6
    iget-object v0, p0, Lml;->a:Lml$h;

    iput-object p2, v0, Lml$h;->b:[Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lml;->b:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lml;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected k(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected l(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method
