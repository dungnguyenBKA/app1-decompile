.class public Lkf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkf$b;
    }
.end annotation


# instance fields
.field private final a:Lel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lel<",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Lkf$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lel;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lel;-><init>(J)V

    iput-object v0, p0, Lkf;->a:Lel;

    .line 3
    new-instance v0, Lkf$a;

    invoke-direct {v0, p0}, Lkf$a;-><init>(Lkf;)V

    const/16 v1, 0xa

    .line 4
    invoke-static {v1, v0}, Lil;->a(ILil$b;)Lk2;

    move-result-object v0

    iput-object v0, p0, Lkf;->b:Lk2;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/g;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkf;->a:Lel;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lkf;->a:Lel;

    invoke-virtual {v1, p1}, Lel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lkf;->b:Lk2;

    invoke-interface {v0}, Lk2;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    check-cast v0, Lkf$b;

    .line 7
    :try_start_1
    iget-object v1, v0, Lkf$b;->b:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    .line 8
    iget-object v1, v0, Lkf$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lhl;->j([B)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object v2, p0, Lkf;->b:Lk2;

    invoke-interface {v2, v0}, Lk2;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lkf;->b:Lk2;

    invoke-interface {v1, v0}, Lk2;->a(Ljava/lang/Object;)Z

    throw p1

    .line 10
    :cond_0
    :goto_0
    iget-object v2, p0, Lkf;->a:Lel;

    monitor-enter v2

    .line 11
    :try_start_2
    iget-object v0, p0, Lkf;->a:Lel;

    invoke-virtual {v0, p1, v1}, Lel;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v2

    return-object v1

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 13
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method
