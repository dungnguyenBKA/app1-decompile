.class abstract Loi0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrk0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field protected final b:Lek0;

.field protected c:Z

.field protected d:J

.field final synthetic e:Loi0;


# direct methods
.method constructor <init>(Loi0;Loi0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loi0$b;->e:Loi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lek0;

    iget-object p1, p1, Loi0;->c:Lzj0;

    invoke-interface {p1}, Lrk0;->timeout()Lsk0;

    move-result-object p1

    invoke-direct {p2, p1}, Lek0;-><init>(Lsk0;)V

    iput-object p2, p0, Loi0$b;->b:Lek0;

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Loi0$b;->d:J

    return-void
.end method


# virtual methods
.method protected final j(ZLjava/io/IOException;)V
    .locals 9

    .line 1
    iget-object v0, p0, Loi0$b;->e:Loi0;

    iget v1, v0, Loi0;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 2
    iget-object v1, p0, Loi0$b;->b:Lek0;

    invoke-virtual {v0, v1}, Loi0;->g(Lek0;)V

    .line 3
    iget-object v5, p0, Loi0$b;->e:Loi0;

    iput v2, v5, Loi0;->e:I

    .line 4
    iget-object v3, v5, Loi0;->b:Ldi0;

    if-eqz v3, :cond_1

    xor-int/lit8 v4, p1, 0x1

    .line 5
    iget-wide v6, p0, Loi0$b;->d:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Ldi0;->n(ZLgi0;JLjava/io/IOException;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Loi0$b;->e:Loi0;

    iget v0, v0, Loi0;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lxj0;J)J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Loi0$b;->e:Loi0;

    iget-object v0, v0, Loi0;->c:Lzj0;

    invoke-interface {v0, p1, p2, p3}, Lrk0;->read(Lxj0;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 2
    iget-wide v0, p0, Loi0$b;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Loi0$b;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2, p1}, Loi0$b;->j(ZLjava/io/IOException;)V

    .line 4
    throw p1
.end method

.method public timeout()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Loi0$b;->b:Lek0;

    return-object v0
.end method
