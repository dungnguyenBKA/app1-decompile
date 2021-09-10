.class public abstract Lxd0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxd0$a;,
        Lxd0$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    .line 2
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lxd0$b;
.end method

.method public b(Ljava/lang/Runnable;)Lbe0;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lxd0;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lxd0;->a()Lxd0$b;

    move-result-object v0

    const-string v1, "run is null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lxd0$a;

    invoke-direct {v1, p1, v0}, Lxd0$a;-><init>(Ljava/lang/Runnable;Lxd0$b;)V

    .line 4
    invoke-virtual {v0, v1, p2, p3, p4}, Lxd0$b;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;

    return-object v1
.end method
