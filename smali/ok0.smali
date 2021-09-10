.class final Lok0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lnk0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field static b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lnk0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnk0;->f:Lnk0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnk0;->g:Lnk0;

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lnk0;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-class v0, Lok0;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-wide v1, Lok0;->b:J

    const-wide/16 v3, 0x2000

    add-long/2addr v1, v3

    const-wide/32 v3, 0x10000

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    monitor-exit v0

    return-void

    .line 5
    :cond_1
    sput-wide v1, Lok0;->b:J

    .line 6
    sget-object v1, Lok0;->a:Lnk0;

    iput-object v1, p0, Lnk0;->f:Lnk0;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lnk0;->c:I

    iput v1, p0, Lnk0;->b:I

    .line 8
    sput-object p0, Lok0;->a:Lnk0;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static b()Lnk0;
    .locals 6

    .line 1
    const-class v0, Lok0;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lok0;->a:Lnk0;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lnk0;->f:Lnk0;

    sput-object v2, Lok0;->a:Lnk0;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lnk0;->f:Lnk0;

    .line 5
    sget-wide v2, Lok0;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lok0;->b:J

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v0, Lnk0;

    invoke-direct {v0}, Lnk0;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
