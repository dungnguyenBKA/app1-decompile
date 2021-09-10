.class public final Llf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Z

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Llf$a;->a:Z

    return-void
.end method


# virtual methods
.method public a()Llf;
    .locals 11

    .line 1
    iget-object v0, p0, Llf$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Llf$a;->b:I

    iget v3, p0, Llf$a;->c:I

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Llf$b;

    iget-object v1, p0, Llf$a;->d:Ljava/lang/String;

    sget-object v9, Llf$c;->b:Llf$c;

    iget-boolean v10, p0, Llf$a;->a:Z

    invoke-direct {v8, v1, v9, v10}, Llf$b;-><init>(Ljava/lang/String;Llf$c;Z)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 3
    new-instance v1, Llf;

    invoke-direct {v1, v0}, Llf;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llf$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Llf$a;
    .locals 0

    .line 1
    iput-object p1, p0, Llf$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Llf$a;
    .locals 0

    .line 1
    iput p1, p0, Llf$a;->b:I

    .line 2
    iput p1, p0, Llf$a;->c:I

    return-object p0
.end method
