.class public Ls5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ls5;


# instance fields
.field private a:Lm5;

.field private b:Ln5;

.field private c:Lq5;

.field private d:Lr5;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lm6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Lm5;

    invoke-direct {v0, p1, p2}, Lm5;-><init>(Landroid/content/Context;Lm6;)V

    iput-object v0, p0, Ls5;->a:Lm5;

    .line 4
    new-instance v0, Ln5;

    invoke-direct {v0, p1, p2}, Ln5;-><init>(Landroid/content/Context;Lm6;)V

    iput-object v0, p0, Ls5;->b:Ln5;

    .line 5
    new-instance v0, Lq5;

    invoke-direct {v0, p1, p2}, Lq5;-><init>(Landroid/content/Context;Lm6;)V

    iput-object v0, p0, Ls5;->c:Lq5;

    .line 6
    new-instance v0, Lr5;

    invoke-direct {v0, p1, p2}, Lr5;-><init>(Landroid/content/Context;Lm6;)V

    iput-object v0, p0, Ls5;->d:Lr5;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lm6;)Ls5;
    .locals 2

    const-class v0, Ls5;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ls5;->e:Ls5;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ls5;

    invoke-direct {v1, p0, p1}, Ls5;-><init>(Landroid/content/Context;Lm6;)V

    sput-object v1, Ls5;->e:Ls5;

    .line 3
    :cond_0
    sget-object p0, Ls5;->e:Ls5;
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
.method public a()Lm5;
    .locals 1

    .line 1
    iget-object v0, p0, Ls5;->a:Lm5;

    return-object v0
.end method

.method public b()Ln5;
    .locals 1

    .line 1
    iget-object v0, p0, Ls5;->b:Ln5;

    return-object v0
.end method

.method public d()Lq5;
    .locals 1

    .line 1
    iget-object v0, p0, Ls5;->c:Lq5;

    return-object v0
.end method

.method public e()Lr5;
    .locals 1

    .line 1
    iget-object v0, p0, Ls5;->d:Lr5;

    return-object v0
.end method
