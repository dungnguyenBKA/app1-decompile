.class final Lns$b;
.super Lts$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Long;

.field private d:[B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Long;

.field private g:Lws;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lts$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lts;
    .locals 14

    .line 1
    iget-object v0, p0, Lns$b;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, " eventTimeMs"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lns$b;->c:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " eventUptimeMs"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lns$b;->f:Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " timezoneOffsetSeconds"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    new-instance v0, Lns;

    iget-object v1, p0, Lns$b;->a:Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lns$b;->b:Ljava/lang/Integer;

    iget-object v1, p0, Lns$b;->c:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lns$b;->d:[B

    iget-object v9, p0, Lns$b;->e:Ljava/lang/String;

    iget-object v1, p0, Lns$b;->f:Ljava/lang/Long;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, p0, Lns$b;->g:Lws;

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lns;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLws;Lns$a;)V

    return-object v0

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/Integer;)Lts$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lns$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(J)Lts$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lns$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public d(J)Lts$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lns$b;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public e(Lws;)Lts$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lns$b;->g:Lws;

    return-object p0
.end method

.method public f(J)Lts$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lns$b;->f:Ljava/lang/Long;

    return-object p0
.end method

.method g([B)Lts$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lns$b;->d:[B

    return-object p0
.end method

.method h(Ljava/lang/String;)Lts$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lns$b;->e:Ljava/lang/String;

    return-object p0
.end method
