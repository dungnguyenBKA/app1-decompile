.class public Lbb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lbb0;


# instance fields
.field a:Lab0;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbb0;
    .locals 2

    .line 1
    sget-object v0, Lbb0;->b:Lbb0;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lbb0;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lbb0;

    invoke-direct {v1}, Lbb0;-><init>()V

    sput-object v1, Lbb0;->b:Lbb0;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lbb0;->b:Lbb0;

    return-object v0
.end method


# virtual methods
.method public b()Lab0;
    .locals 2

    .line 1
    iget-object v0, p0, Lbb0;->a:Lab0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    .line 4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Leb0;

    invoke-direct {v0}, Leb0;-><init>()V

    iput-object v0, p0, Lbb0;->a:Lab0;

    goto :goto_0

    :cond_1
    const-string v1, "xiaomi"

    .line 6
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v0, Lib0;

    invoke-direct {v0}, Lib0;-><init>()V

    iput-object v0, p0, Lbb0;->a:Lab0;

    goto :goto_0

    :cond_2
    const-string v1, "oppo"

    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    new-instance v0, Lfb0;

    invoke-direct {v0}, Lfb0;-><init>()V

    iput-object v0, p0, Lbb0;->a:Lab0;

    goto :goto_0

    :cond_3
    const-string v1, "vivo"

    .line 10
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    new-instance v0, Lhb0;

    invoke-direct {v0}, Lhb0;-><init>()V

    iput-object v0, p0, Lbb0;->a:Lab0;

    goto :goto_0

    :cond_4
    const-string v1, "smartisan"

    .line 12
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    new-instance v0, Lgb0;

    invoke-direct {v0}, Lgb0;-><init>()V

    iput-object v0, p0, Lbb0;->a:Lab0;

    goto :goto_0

    .line 14
    :cond_5
    new-instance v0, Ldb0;

    invoke-direct {v0}, Ldb0;-><init>()V

    iput-object v0, p0, Lbb0;->a:Lab0;

    .line 15
    :goto_0
    iget-object v0, p0, Lbb0;->a:Lab0;

    return-object v0
.end method
