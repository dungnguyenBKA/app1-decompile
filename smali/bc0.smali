.class public Lbc0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbc0$a;
    }
.end annotation


# static fields
.field private static c:Lbc0; = null

.field private static d:J = -0x1L


# instance fields
.field private a:Lcom/google/firebase/remoteconfig/f;

.field private b:Z


# direct methods
.method private constructor <init>(Lbc0$a;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lbc0;->b:Z

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/firebase/remoteconfig/f;->e()Lcom/google/firebase/remoteconfig/f;

    move-result-object v1

    iput-object v1, p0, Lbc0;->a:Lcom/google/firebase/remoteconfig/f;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lbc0;->d:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x2932e00

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/e;

    .line 7
    iget-object v1, v1, Lcom/camerasideas/collagemaker/activity/e;->a:Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->i(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    goto :goto_3

    :cond_2
    const-wide/16 v1, -0x1

    .line 9
    :try_start_1
    sput-wide v1, Lbc0;->d:J

    .line 10
    iget-boolean v1, p0, Lbc0;->b:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 11
    move-object v1, p1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/e;

    .line 12
    iget-object v1, v1, Lcom/camerasideas/collagemaker/activity/e;->a:Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->i(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_3
    monitor-exit p0

    goto :goto_3

    .line 14
    :cond_4
    :try_start_2
    iput-boolean v5, p0, Lbc0;->b:Z

    .line 15
    new-instance v1, Lzb0;

    invoke-direct {v1, p0, p1}, Lzb0;-><init>(Lbc0;Lbc0$a;)V

    .line 16
    new-instance v2, Lac0;

    invoke-direct {v2, p0, p1}, Lac0;-><init>(Lbc0;Lbc0$a;)V

    .line 17
    sget-boolean v3, Lcom/zjsoft/baseadlib/b;->a:Z

    const-wide/16 v4, 0x3c

    if-eqz v3, :cond_5

    .line 18
    new-instance v3, Lcom/google/firebase/remoteconfig/k$b;

    invoke-direct {v3}, Lcom/google/firebase/remoteconfig/k$b;-><init>()V

    const-wide/16 v6, 0x5

    .line 19
    invoke-virtual {v3, v6, v7}, Lcom/google/firebase/remoteconfig/k$b;->e(J)Lcom/google/firebase/remoteconfig/k$b;

    .line 20
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/remoteconfig/k$b;->d(J)Lcom/google/firebase/remoteconfig/k$b;

    .line 21
    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/k$b;->c()Lcom/google/firebase/remoteconfig/k;

    move-result-object v3

    goto :goto_1

    .line 22
    :cond_5
    new-instance v3, Lcom/google/firebase/remoteconfig/k$b;

    invoke-direct {v3}, Lcom/google/firebase/remoteconfig/k$b;-><init>()V

    const-wide/16 v6, 0xe10

    .line 23
    invoke-virtual {v3, v6, v7}, Lcom/google/firebase/remoteconfig/k$b;->e(J)Lcom/google/firebase/remoteconfig/k$b;

    .line 24
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/remoteconfig/k$b;->d(J)Lcom/google/firebase/remoteconfig/k$b;

    .line 25
    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/k$b;->c()Lcom/google/firebase/remoteconfig/k;

    move-result-object v3

    .line 26
    :goto_1
    iget-object v4, p0, Lbc0;->a:Lcom/google/firebase/remoteconfig/f;

    invoke-virtual {v4, v3}, Lcom/google/firebase/remoteconfig/f;->j(Lcom/google/firebase/remoteconfig/k;)Lkw;

    .line 27
    iget-object v3, p0, Lbc0;->a:Lcom/google/firebase/remoteconfig/f;

    invoke-virtual {v3}, Lcom/google/firebase/remoteconfig/f;->d()Lkw;

    move-result-object v3

    invoke-virtual {v3, v1}, Lkw;->d(Lhw;)Lkw;

    move-result-object v1

    invoke-virtual {v1, v2}, Lkw;->b(Lgw;)Lkw;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 28
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_6

    .line 29
    check-cast p1, Lcom/camerasideas/collagemaker/activity/e;

    .line 30
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/e;->a:Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->i(Z)V

    .line 31
    :cond_6
    iput-boolean v0, p0, Lbc0;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    :goto_2
    monitor-exit p0

    :goto_3
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(J)J
    .locals 0

    .line 1
    sput-wide p0, Lbc0;->d:J

    return-wide p0
.end method

.method static synthetic b(Lbc0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lbc0;->b:Z

    return p1
.end method

.method public static declared-synchronized c(Lbc0$a;)Lbc0;
    .locals 2

    const-class v0, Lbc0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lbc0;->c:Lbc0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lbc0;

    invoke-direct {v1, p0}, Lbc0;-><init>(Lbc0$a;)V

    sput-object v1, Lbc0;->c:Lbc0;

    .line 3
    :cond_0
    sget-object p0, Lbc0;->c:Lbc0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lbc0;->a:Lcom/google/firebase/remoteconfig/f;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/remoteconfig/f;->e()Lcom/google/firebase/remoteconfig/f;

    move-result-object v0

    iput-object v0, p0, Lbc0;->a:Lcom/google/firebase/remoteconfig/f;

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lbc0;->a:Lcom/google/firebase/remoteconfig/f;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/f;->g(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/p;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/p;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object p2
.end method
