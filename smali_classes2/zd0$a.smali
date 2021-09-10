.class final Lzd0$a;
.super Lxd0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;

.field private volatile c:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxd0$b;-><init>()V

    .line 2
    iput-object p1, p0, Lzd0$a;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;
    .locals 5

    .line 1
    sget-object v0, Lme0;->b:Lme0;

    const-string v1, "run == null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "unit == null"

    .line 2
    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lzd0$a;->c:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lzd0$b;

    iget-object v2, p0, Lzd0$a;->b:Landroid/os/Handler;

    invoke-direct {v1, v2, p1}, Lzd0$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 5
    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 6
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lzd0$a;->b:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8
    iget-boolean p1, p0, Lzd0$a;->c:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lzd0$a;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lzd0$a;->c:Z

    .line 2
    iget-object v0, p0, Lzd0$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
