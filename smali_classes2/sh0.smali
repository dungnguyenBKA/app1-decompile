.class Lsh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrk0;


# instance fields
.field b:Z

.field final synthetic c:Lzj0;

.field final synthetic d:Luh0;

.field final synthetic e:Lyj0;


# direct methods
.method constructor <init>(Lth0;Lzj0;Luh0;Lyj0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lsh0;->c:Lzj0;

    iput-object p3, p0, Lsh0;->d:Luh0;

    iput-object p4, p0, Lsh0;->e:Lyj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsh0;->b:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {p0, v0, v1}, Lrh0;->m(Lrk0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lsh0;->b:Z

    .line 4
    iget-object v0, p0, Lsh0;->d:Luh0;

    invoke-interface {v0}, Luh0;->abort()V

    .line 5
    :cond_0
    iget-object v0, p0, Lsh0;->c:Lzj0;

    invoke-interface {v0}, Lrk0;->close()V

    return-void
.end method

.method public read(Lxj0;J)J
    .locals 8

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lsh0;->c:Lzj0;

    invoke-interface {v1, p1, p2, p3}, Lrk0;->read(Lxj0;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Lsh0;->b:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lsh0;->b:Z

    .line 4
    iget-object p1, p0, Lsh0;->e:Lyj0;

    invoke-interface {p1}, Lqk0;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Lsh0;->e:Lyj0;

    invoke-interface {v0}, Lyj0;->a()Lxj0;

    move-result-object v3

    invoke-virtual {p1}, Lxj0;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lxj0;->S(Lxj0;JJ)Lxj0;

    .line 6
    iget-object p1, p0, Lsh0;->e:Lyj0;

    invoke-interface {p1}, Lyj0;->x()Lyj0;

    return-wide p2

    :catch_0
    move-exception p1

    .line 7
    iget-boolean p2, p0, Lsh0;->b:Z

    if-nez p2, :cond_2

    .line 8
    iput-boolean v0, p0, Lsh0;->b:Z

    .line 9
    iget-object p2, p0, Lsh0;->d:Luh0;

    invoke-interface {p2}, Luh0;->abort()V

    .line 10
    :cond_2
    throw p1
.end method

.method public timeout()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lsh0;->c:Lzj0;

    invoke-interface {v0}, Lrk0;->timeout()Lsk0;

    move-result-object v0

    return-object v0
.end method
