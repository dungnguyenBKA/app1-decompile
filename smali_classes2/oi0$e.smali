.class final Loi0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final b:Lek0;

.field private c:Z

.field private d:J

.field final synthetic e:Loi0;


# direct methods
.method constructor <init>(Loi0;J)V
    .locals 1

    .line 1
    iput-object p1, p0, Loi0$e;->e:Loi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lek0;

    iget-object p1, p1, Loi0;->d:Lyj0;

    invoke-interface {p1}, Lqk0;->timeout()Lsk0;

    move-result-object p1

    invoke-direct {v0, p1}, Lek0;-><init>(Lsk0;)V

    iput-object v0, p0, Loi0$e;->b:Lek0;

    .line 3
    iput-wide p2, p0, Loi0$e;->d:J

    return-void
.end method


# virtual methods
.method public H(Lxj0;J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Loi0$e;->c:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lxj0;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lrh0;->f(JJJ)V

    .line 3
    iget-wide v0, p0, Loi0$e;->d:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 4
    iget-object v0, p0, Loi0$e;->e:Loi0;

    iget-object v0, v0, Loi0;->d:Lyj0;

    invoke-interface {v0, p1, p2, p3}, Lqk0;->H(Lxj0;J)V

    .line 5
    iget-wide v0, p0, Loi0$e;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Loi0$e;->d:J

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Loi0$e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Loi0$e;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Loi0$e;->c:Z

    .line 3
    iget-wide v0, p0, Loi0$e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 4
    iget-object v0, p0, Loi0$e;->e:Loi0;

    iget-object v1, p0, Loi0$e;->b:Lek0;

    invoke-virtual {v0, v1}, Loi0;->g(Lek0;)V

    .line 5
    iget-object v0, p0, Loi0$e;->e:Loi0;

    const/4 v1, 0x3

    iput v1, v0, Loi0;->e:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Loi0$e;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Loi0$e;->e:Loi0;

    iget-object v0, v0, Loi0;->d:Lyj0;

    invoke-interface {v0}, Lyj0;->flush()V

    return-void
.end method

.method public timeout()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Loi0$e;->b:Lek0;

    return-object v0
.end method
