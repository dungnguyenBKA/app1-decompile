.class public Ls;
.super Lu;
.source "SourceFile"


# static fields
.field private static volatile c:Ls;

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Lu;

.field private b:Lu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls$a;

    invoke-direct {v0}, Ls$a;-><init>()V

    sput-object v0, Ls;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu;-><init>()V

    .line 2
    new-instance v0, Lt;

    invoke-direct {v0}, Lt;-><init>()V

    iput-object v0, p0, Ls;->b:Lu;

    .line 3
    iput-object v0, p0, Ls;->a:Lu;

    return-void
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Ls;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static e()Ls;
    .locals 2

    .line 1
    sget-object v0, Ls;->c:Ls;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ls;->c:Ls;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Ls;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ls;->c:Ls;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ls;

    invoke-direct {v1}, Ls;-><init>()V

    sput-object v1, Ls;->c:Ls;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Ls;->c:Ls;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls;->a:Lu;

    invoke-virtual {v0, p1}, Lu;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls;->a:Lu;

    invoke-virtual {v0}, Lu;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls;->a:Lu;

    invoke-virtual {v0, p1}, Lu;->c(Ljava/lang/Runnable;)V

    return-void
.end method
