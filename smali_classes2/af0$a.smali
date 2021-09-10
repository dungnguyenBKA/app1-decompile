.class final Laf0$a;
.super Lxd0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:Lne0;

.field private final c:Lae0;

.field private final d:Lne0;

.field private final e:Laf0$c;

.field volatile f:Z


# direct methods
.method constructor <init>(Laf0$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lxd0$b;-><init>()V

    .line 2
    iput-object p1, p0, Laf0$a;->e:Laf0$c;

    .line 3
    new-instance p1, Lne0;

    invoke-direct {p1}, Lne0;-><init>()V

    iput-object p1, p0, Laf0$a;->b:Lne0;

    .line 4
    new-instance v0, Lae0;

    invoke-direct {v0}, Lae0;-><init>()V

    iput-object v0, p0, Laf0$a;->c:Lae0;

    .line 5
    new-instance v1, Lne0;

    invoke-direct {v1}, Lne0;-><init>()V

    iput-object v1, p0, Laf0$a;->d:Lne0;

    .line 6
    invoke-virtual {v1, p1}, Lne0;->b(Lbe0;)Z

    .line 7
    invoke-virtual {v1, v0}, Lne0;->b(Lbe0;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Lbe0;
    .locals 6

    .line 1
    iget-boolean v0, p0, Laf0$a;->f:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lme0;->b:Lme0;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Laf0$a;->e:Laf0$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Laf0$a;->b:Lne0;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ldf0;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lke0;)Lgf0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lbe0;
    .locals 6

    .line 1
    iget-boolean v0, p0, Laf0$a;->f:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lme0;->b:Lme0;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Laf0$a;->e:Laf0$c;

    iget-object v5, p0, Laf0$a;->c:Lae0;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ldf0;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lke0;)Lgf0;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Laf0$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laf0$a;->f:Z

    .line 3
    iget-object v0, p0, Laf0$a;->d:Lne0;

    invoke-virtual {v0}, Lne0;->e()V

    :cond_0
    return-void
.end method
