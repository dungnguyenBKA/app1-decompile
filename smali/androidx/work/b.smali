.class public final Landroidx/work/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/b$b;,
        Landroidx/work/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/work/q;

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method constructor <init>(Landroidx/work/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/work/b;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    .line 3
    invoke-direct {p0}, Landroidx/work/b;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/b;->b:Ljava/util/concurrent/Executor;

    .line 4
    sget p1, Landroidx/work/q;->b:I

    new-instance p1, Landroidx/work/p;

    invoke-direct {p1}, Landroidx/work/p;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/work/b;->c:Landroidx/work/q;

    const/4 p1, 0x4

    .line 6
    iput p1, p0, Landroidx/work/b;->d:I

    const p1, 0x7fffffff

    .line 7
    iput p1, p0, Landroidx/work/b;->e:I

    const/16 p1, 0x14

    .line 8
    iput p1, p0, Landroidx/work/b;->f:I

    return-void
.end method

.method private a()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/b;->e:I

    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroidx/work/b;->f:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroidx/work/b;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/b;->d:I

    return v0
.end method

.method public f()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public g()Landroidx/work/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/b;->c:Landroidx/work/q;

    return-object v0
.end method
