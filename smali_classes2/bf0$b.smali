.class final Lbf0$b;
.super Lxd0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final b:Lae0;

.field private final c:Lbf0$a;

.field private final d:Lbf0$c;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lbf0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lxd0$b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbf0$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lbf0$b;->c:Lbf0$a;

    .line 4
    new-instance v0, Lae0;

    invoke-direct {v0}, Lae0;-><init>()V

    iput-object v0, p0, Lbf0$b;->b:Lae0;

    .line 5
    invoke-virtual {p1}, Lbf0$a;->a()Lbf0$c;

    move-result-object p1

    iput-object p1, p0, Lbf0$b;->d:Lbf0$c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;
    .locals 6

    .line 1
    iget-object v0, p0, Lbf0$b;->b:Lae0;

    invoke-virtual {v0}, Lae0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lme0;->b:Lme0;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lbf0$b;->d:Lbf0$c;

    iget-object v5, p0, Lbf0$b;->b:Lae0;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ldf0;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lke0;)Lgf0;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbf0$b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbf0$b;->b:Lae0;

    invoke-virtual {v0}, Lae0;->e()V

    .line 3
    iget-object v0, p0, Lbf0$b;->c:Lbf0$a;

    iget-object v1, p0, Lbf0$b;->d:Lbf0$c;

    invoke-virtual {v0, v1}, Lbf0$a;->b(Lbf0$c;)V

    :cond_0
    return-void
.end method
