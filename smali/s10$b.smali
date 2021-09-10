.class final Ls10$b;
.super Li20$d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Boolean;

.field private f:Li20$d$a;

.field private g:Li20$d$f;

.field private h:Li20$d$e;

.field private i:Li20$d$c;

.field private j:Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj20<",
            "Li20$d$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$b;-><init>()V

    return-void
.end method

.method constructor <init>(Li20$d;Ls10$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Li20$d$b;-><init>()V

    .line 3
    invoke-virtual {p1}, Li20$d;->f()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Li20$d;->h()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Li20$d;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->c:Ljava/lang/Long;

    .line 6
    invoke-virtual {p1}, Li20$d;->d()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->d:Ljava/lang/Long;

    .line 7
    invoke-virtual {p1}, Li20$d;->l()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->e:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p1}, Li20$d;->b()Li20$d$a;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->f:Li20$d$a;

    .line 9
    invoke-virtual {p1}, Li20$d;->k()Li20$d$f;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->g:Li20$d$f;

    .line 10
    invoke-virtual {p1}, Li20$d;->i()Li20$d$e;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->h:Li20$d$e;

    .line 11
    invoke-virtual {p1}, Li20$d;->c()Li20$d$c;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->i:Li20$d$c;

    .line 12
    invoke-virtual {p1}, Li20$d;->e()Lj20;

    move-result-object p2

    iput-object p2, p0, Ls10$b;->j:Lj20;

    .line 13
    invoke-virtual {p1}, Li20$d;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ls10$b;->k:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Li20$d;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ls10$b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, " generator"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 2
    :goto_0
    iget-object v2, v0, Ls10$b;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, " identifier"

    .line 3
    invoke-static {v1, v2}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_1
    iget-object v2, v0, Ls10$b;->c:Ljava/lang/Long;

    if-nez v2, :cond_2

    const-string v2, " startedAt"

    .line 5
    invoke-static {v1, v2}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_2
    iget-object v2, v0, Ls10$b;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    const-string v2, " crashed"

    .line 7
    invoke-static {v1, v2}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_3
    iget-object v2, v0, Ls10$b;->f:Li20$d$a;

    if-nez v2, :cond_4

    const-string v2, " app"

    .line 9
    invoke-static {v1, v2}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_4
    iget-object v2, v0, Ls10$b;->k:Ljava/lang/Integer;

    if-nez v2, :cond_5

    const-string v2, " generatorType"

    .line 11
    invoke-static {v1, v2}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13
    new-instance v1, Ls10;

    iget-object v4, v0, Ls10$b;->a:Ljava/lang/String;

    iget-object v5, v0, Ls10$b;->b:Ljava/lang/String;

    iget-object v2, v0, Ls10$b;->c:Ljava/lang/Long;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v0, Ls10$b;->d:Ljava/lang/Long;

    iget-object v2, v0, Ls10$b;->e:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, v0, Ls10$b;->f:Li20$d$a;

    iget-object v11, v0, Ls10$b;->g:Li20$d$f;

    iget-object v12, v0, Ls10$b;->h:Li20$d$e;

    iget-object v13, v0, Ls10$b;->i:Li20$d$c;

    iget-object v14, v0, Ls10$b;->j:Lj20;

    iget-object v2, v0, Ls10$b;->k:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Ls10;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLi20$d$a;Li20$d$f;Li20$d$e;Li20$d$c;Lj20;ILs10$a;)V

    return-object v1

    .line 17
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing required properties:"

    invoke-static {v3, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b(Li20$d$a;)Li20$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Ls10$b;->f:Li20$d$a;

    return-object p0
.end method

.method public c(Z)Li20$d$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ls10$b;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(Li20$d$c;)Li20$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Ls10$b;->i:Li20$d$c;

    return-object p0
.end method

.method public e(Ljava/lang/Long;)Li20$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Ls10$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public f(Lj20;)Li20$d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj20<",
            "Li20$d$d;",
            ">;)",
            "Li20$d$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls10$b;->j:Lj20;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Li20$d$b;
    .locals 1

    const-string v0, "Null generator"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls10$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public h(I)Li20$d$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ls10$b;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Li20$d$b;
    .locals 1

    const-string v0, "Null identifier"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ls10$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public k(Li20$d$e;)Li20$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Ls10$b;->h:Li20$d$e;

    return-object p0
.end method

.method public l(J)Li20$d$b;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ls10$b;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public m(Li20$d$f;)Li20$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Ls10$b;->g:Li20$d$f;

    return-object p0
.end method
