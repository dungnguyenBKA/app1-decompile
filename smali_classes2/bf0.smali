.class public final Lbf0;
.super Lxd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbf0$c;,
        Lbf0$b;,
        Lbf0$a;
    }
.end annotation


# static fields
.field static final c:Lef0;

.field static final d:Lef0;

.field private static final e:Ljava/util/concurrent/TimeUnit;

.field static final f:Lbf0$c;

.field static final g:Lbf0$a;


# instance fields
.field final a:Ljava/util/concurrent/ThreadFactory;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lbf0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lbf0;->e:Ljava/util/concurrent/TimeUnit;

    .line 2
    new-instance v0, Lbf0$c;

    new-instance v1, Lef0;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lef0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbf0$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lbf0;->f:Lbf0$c;

    .line 3
    invoke-virtual {v0}, Ldf0;->e()V

    const-string v0, "rx2.io-priority"

    const/4 v1, 0x5

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    new-instance v1, Lef0;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lef0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbf0;->c:Lef0;

    .line 7
    new-instance v2, Lef0;

    const-string v3, "RxCachedWorkerPoolEvictor"

    invoke-direct {v2, v3, v0}, Lef0;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lbf0;->d:Lef0;

    .line 8
    new-instance v0, Lbf0$a;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lbf0$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lbf0;->g:Lbf0$a;

    .line 9
    invoke-virtual {v0}, Lbf0$a;->c()V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v0, Lbf0;->c:Lef0;

    .line 2
    invoke-direct {p0}, Lxd0;-><init>()V

    .line 3
    iput-object v0, p0, Lbf0;->a:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lbf0;->g:Lbf0$a;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lbf0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v3, Lbf0$a;

    sget-object v4, Lbf0;->e:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3c

    invoke-direct {v3, v5, v6, v4, v0}, Lbf0$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {v3}, Lbf0$a;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lxd0$b;
    .locals 2

    .line 1
    new-instance v0, Lbf0$b;

    iget-object v1, p0, Lbf0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf0$a;

    invoke-direct {v0, v1}, Lbf0$b;-><init>(Lbf0$a;)V

    return-object v0
.end method
