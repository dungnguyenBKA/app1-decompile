.class public final Laf0;
.super Lxd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf0$c;,
        Laf0$a;,
        Laf0$b;
    }
.end annotation


# static fields
.field static final c:Laf0$b;

.field static final d:Lef0;

.field static final e:I

.field static final f:Laf0$c;


# instance fields
.field final a:Ljava/util/concurrent/ThreadFactory;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Laf0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx2.computation-threads"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    sput v0, Laf0;->e:I

    .line 2
    new-instance v0, Laf0$c;

    new-instance v1, Lef0;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v1, v3}, Lef0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Laf0$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Laf0;->f:Laf0$c;

    .line 3
    invoke-virtual {v0}, Ldf0;->e()V

    const/16 v0, 0xa

    const/4 v1, 0x5

    const-string v3, "rx2.computation-priority"

    .line 4
    invoke-static {v3, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    new-instance v3, Lef0;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v1}, Lef0;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Laf0;->d:Lef0;

    .line 7
    new-instance v0, Laf0$b;

    invoke-direct {v0, v2, v3}, Laf0$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Laf0;->c:Laf0$b;

    .line 8
    iget-object v0, v0, Laf0$b;->b:[Laf0$c;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 9
    invoke-virtual {v3}, Ldf0;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Laf0;->d:Lef0;

    .line 2
    invoke-direct {p0}, Lxd0;-><init>()V

    .line 3
    iput-object v0, p0, Laf0;->a:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Laf0;->c:Laf0$b;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Laf0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v3, Laf0$b;

    sget v4, Laf0;->e:I

    invoke-direct {v3, v4, v0}, Laf0$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, v3, Laf0$b;->b:[Laf0$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 8
    invoke-virtual {v3}, Ldf0;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lxd0$b;
    .locals 2

    .line 1
    new-instance v0, Laf0$a;

    iget-object v1, p0, Laf0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laf0$b;

    invoke-virtual {v1}, Laf0$b;->a()Laf0$c;

    move-result-object v1

    invoke-direct {v0, v1}, Laf0$a;-><init>(Laf0$c;)V

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;
    .locals 1

    .line 1
    iget-object v0, p0, Laf0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf0$b;

    invoke-virtual {v0}, Laf0$b;->a()Laf0$c;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Ldf0;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;

    move-result-object p1

    return-object p1
.end method
