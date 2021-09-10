.class final Lf50$b;
.super Li50$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lh50$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li50$a;-><init>()V

    return-void
.end method

.method constructor <init>(Li50;Lf50$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Li50$a;-><init>()V

    .line 3
    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lf50$b;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Li50;->f()Lh50$a;

    move-result-object p2

    iput-object p2, p0, Lf50$b;->b:Lh50$a;

    .line 5
    invoke-virtual {p1}, Li50;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lf50$b;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Li50;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lf50$b;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Li50;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lf50$b;->e:Ljava/lang/Long;

    .line 8
    invoke-virtual {p1}, Li50;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lf50$b;->f:Ljava/lang/Long;

    .line 9
    invoke-virtual {p1}, Li50;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf50$b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Li50;
    .locals 13

    .line 1
    iget-object v0, p0, Lf50$b;->b:Lh50$a;

    if-nez v0, :cond_0

    const-string v0, " registrationStatus"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lf50$b;->e:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " expiresInSecs"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lf50$b;->f:Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " tokenCreationEpochInSecs"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    new-instance v0, Lf50;

    iget-object v3, p0, Lf50$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lf50$b;->b:Lh50$a;

    iget-object v5, p0, Lf50$b;->c:Ljava/lang/String;

    iget-object v6, p0, Lf50$b;->d:Ljava/lang/String;

    iget-object v1, p0, Lf50$b;->e:Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Lf50$b;->f:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lf50$b;->g:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lf50;-><init>(Ljava/lang/String;Lh50$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lf50$a;)V

    return-object v0

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Li50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf50$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Li50$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lf50$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Li50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf50$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Li50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf50$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Li50$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf50$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g(Lh50$a;)Li50$a;
    .locals 1

    const-string v0, "Null registrationStatus"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lf50$b;->b:Lh50$a;

    return-object p0
.end method

.method public h(J)Li50$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lf50$b;->f:Ljava/lang/Long;

    return-object p0
.end method
