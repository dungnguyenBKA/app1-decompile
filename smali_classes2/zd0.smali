.class final Lzd0;
.super Lxd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzd0$b;,
        Lzd0$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxd0;-><init>()V

    .line 2
    iput-object p1, p0, Lzd0;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Lxd0$b;
    .locals 2

    .line 1
    new-instance v0, Lzd0$a;

    iget-object v1, p0, Lzd0;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lzd0$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;
    .locals 4

    const-string v0, "run == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit == null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lzd0$b;

    iget-object v1, p0, Lzd0;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lzd0$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method
