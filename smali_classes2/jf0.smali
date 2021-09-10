.class public final Ljf0;
.super Lxd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljf0$a;,
        Ljf0$b;,
        Ljf0$c;
    }
.end annotation


# static fields
.field private static final a:Ljf0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljf0;

    invoke-direct {v0}, Ljf0;-><init>()V

    sput-object v0, Ljf0;->a:Ljf0;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxd0;-><init>()V

    return-void
.end method

.method public static d()Ljf0;
    .locals 1

    .line 1
    sget-object v0, Ljf0;->a:Ljf0;

    return-object v0
.end method


# virtual methods
.method public a()Lxd0$b;
    .locals 1

    .line 1
    new-instance v0, Ljf0$c;

    invoke-direct {v0}, Ljf0$c;-><init>()V

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)Lbe0;
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object p1, Lme0;->b:Lme0;

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    const-string p2, "run is null"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 5
    invoke-static {p1}, Lmf0;->f(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    sget-object p1, Lme0;->b:Lme0;

    return-object p1
.end method
