.class final Lge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe;
.implements Lil$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhe<",
        "TZ;>;",
        "Lil$d;"
    }
.end annotation


# static fields
.field private static final f:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Lge<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lll;

.field private c:Lhe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lge$a;

    invoke-direct {v0}, Lge$a;-><init>()V

    const/16 v1, 0x14

    .line 2
    invoke-static {v1, v0}, Lil;->a(ILil$b;)Lk2;

    move-result-object v0

    sput-object v0, Lge;->f:Lk2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lll;->a()Lll;

    move-result-object v0

    iput-object v0, p0, Lge;->b:Lll;

    return-void
.end method

.method static e(Lhe;)Lge;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lhe<",
            "TZ;>;)",
            "Lge<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lge;->f:Lk2;

    invoke-interface {v0}, Lk2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lge;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lge;->e:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lge;->d:Z

    .line 5
    iput-object p0, v0, Lge;->c:Lhe;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lge;->b:Lll;

    invoke-virtual {v0}, Lll;->c()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lge;->e:Z

    .line 3
    iget-boolean v0, p0, Lge;->d:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lge;->c:Lhe;

    invoke-interface {v0}, Lhe;->a()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lge;->c:Lhe;

    .line 6
    sget-object v0, Lge;->f:Lk2;

    invoke-interface {v0, p0}, Lk2;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lll;
    .locals 1

    .line 1
    iget-object v0, p0, Lge;->b:Lll;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lge;->c:Lhe;

    invoke-interface {v0}, Lhe;->c()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lge;->c:Lhe;

    invoke-interface {v0}, Lhe;->d()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lge;->b:Lll;

    invoke-virtual {v0}, Lll;->c()V

    .line 2
    iget-boolean v0, p0, Lge;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lge;->d:Z

    .line 4
    iget-boolean v0, p0, Lge;->e:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lge;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lge;->c:Lhe;

    invoke-interface {v0}, Lhe;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
