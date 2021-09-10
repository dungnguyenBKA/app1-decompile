.class public abstract Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;,
        Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g;,
        Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;,
        Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;
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
.field private static final d:Ljava/util/concurrent/ThreadFactory;

.field public static final e:Ljava/util/concurrent/ExecutorService;

.field private static final f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;


# instance fields
.field private final a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g<",
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

.field private volatile c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$a;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$a;-><init>()V

    sput-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->d:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;-><init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$a;)V

    sput-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;->b:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$b;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$b;-><init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g;

    .line 4
    new-instance v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$c;

    invoke-direct {v1, p0, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$c;-><init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;

    return-object v0
.end method

.method static b(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->f(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;->d:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;

    return-void
.end method

.method public static c(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->d:Ljava/util/concurrent/ThreadFactory;

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final varargs d(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)",
            "Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;

    sget-object v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;->b:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;

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
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$f;

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g;

    iput-object p2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g;->b:[Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->b:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected abstract f(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method
