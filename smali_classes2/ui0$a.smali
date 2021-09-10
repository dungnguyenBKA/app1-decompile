.class Lui0$a;
.super Ldk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field b:Z

.field c:J

.field final synthetic d:Lui0;


# direct methods
.method constructor <init>(Lui0;Lrk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui0$a;->d:Lui0;

    .line 2
    invoke-direct {p0, p2}, Ldk0;-><init>(Lrk0;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lui0$a;->b:Z

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lui0$a;->c:J

    return-void
.end method

.method private j(Ljava/io/IOException;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lui0$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lui0$a;->b:Z

    .line 3
    iget-object v3, p0, Lui0$a;->d:Lui0;

    iget-object v1, v3, Lui0;->b:Ldi0;

    const/4 v2, 0x0

    iget-wide v4, p0, Lui0$a;->c:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ldi0;->n(ZLgi0;JLjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Ldk0;->close()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lui0$a;->j(Ljava/io/IOException;)V

    return-void
.end method

.method public read(Lxj0;J)J
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ldk0;->delegate()Lrk0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lrk0;->read(Lxj0;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 2
    iget-wide v0, p0, Lui0$a;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lui0$a;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lui0$a;->j(Ljava/io/IOException;)V

    .line 4
    throw p1
.end method
