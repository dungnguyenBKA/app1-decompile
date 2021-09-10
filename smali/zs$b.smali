.class final Lzs$b;
.super Lht$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lit;

.field private b:Ljava/lang/String;

.field private c:Lxr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxr<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Lzr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzr<",
            "*[B>;"
        }
    .end annotation
.end field

.field private e:Lwr;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lht$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lht;
    .locals 9

    .line 1
    iget-object v0, p0, Lzs$b;->a:Lit;

    if-nez v0, :cond_0

    const-string v0, " transportContext"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lzs$b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " transportName"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lzs$b;->c:Lxr;

    if-nez v1, :cond_2

    const-string v1, " event"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Lzs$b;->d:Lzr;

    if-nez v1, :cond_3

    const-string v1, " transformer"

    .line 7
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    iget-object v1, p0, Lzs$b;->e:Lwr;

    if-nez v1, :cond_4

    const-string v1, " encoding"

    .line 9
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    new-instance v0, Lzs;

    iget-object v3, p0, Lzs$b;->a:Lit;

    iget-object v4, p0, Lzs$b;->b:Ljava/lang/String;

    iget-object v5, p0, Lzs$b;->c:Lxr;

    iget-object v6, p0, Lzs$b;->d:Lzr;

    iget-object v7, p0, Lzs$b;->e:Lwr;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lzs;-><init>(Lit;Ljava/lang/String;Lxr;Lzr;Lwr;Lzs$a;)V

    return-object v0

    .line 12
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method b(Lwr;)Lht$a;
    .locals 1

    const-string v0, "Null encoding"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzs$b;->e:Lwr;

    return-object p0
.end method

.method c(Lxr;)Lht$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxr<",
            "*>;)",
            "Lht$a;"
        }
    .end annotation

    const-string v0, "Null event"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzs$b;->c:Lxr;

    return-object p0
.end method

.method d(Lzr;)Lht$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr<",
            "*[B>;)",
            "Lht$a;"
        }
    .end annotation

    const-string v0, "Null transformer"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzs$b;->d:Lzr;

    return-object p0
.end method

.method public e(Lit;)Lht$a;
    .locals 1

    const-string v0, "Null transportContext"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzs$b;->a:Lit;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lht$a;
    .locals 1

    const-string v0, "Null transportName"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzs$b;->b:Ljava/lang/String;

    return-object p0
.end method
