.class Lcom/google/android/material/snackbar/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/c$c;,
        Lcom/google/android/material/snackbar/c$b;
    }
.end annotation


# static fields
.field private static c:Lcom/google/android/material/snackbar/c;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/snackbar/c;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/c$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/c$a;-><init>(Lcom/google/android/material/snackbar/c;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/c;->b:Landroid/os/Handler;

    return-void
.end method

.method static a()Lcom/google/android/material/snackbar/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/snackbar/c;->c:Lcom/google/android/material/snackbar/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/material/snackbar/c;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/c;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/c;->c:Lcom/google/android/material/snackbar/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/c;->c:Lcom/google/android/material/snackbar/c;

    return-object v0
.end method


# virtual methods
.method b(Lcom/google/android/material/snackbar/c$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/c;->a:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public c(Lcom/google/android/material/snackbar/c$b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/snackbar/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public d(Lcom/google/android/material/snackbar/c$b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/snackbar/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method
