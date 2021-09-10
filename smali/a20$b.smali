.class final La20$b;
.super Li20$d$d$a$b$c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj20<",
            "Li20$d$d$a$b$e$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Li20$d$d$a$b$c;

.field private e:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$a$b$c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$d$d$a$b$c;
    .locals 9

    .line 1
    iget-object v0, p0, La20$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " type"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, La20$b;->c:Lj20;

    if-nez v1, :cond_1

    const-string v1, " frames"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, La20$b;->e:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v1, " overflowCount"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    new-instance v0, La20;

    iget-object v3, p0, La20$b;->a:Ljava/lang/String;

    iget-object v4, p0, La20$b;->b:Ljava/lang/String;

    iget-object v5, p0, La20$b;->c:Lj20;

    iget-object v6, p0, La20$b;->d:Li20$d$d$a$b$c;

    iget-object v1, p0, La20$b;->e:Ljava/lang/Integer;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, La20;-><init>(Ljava/lang/String;Ljava/lang/String;Lj20;Li20$d$d$a$b$c;ILa20$a;)V

    return-object v0

    .line 9
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Li20$d$d$a$b$c;)Li20$d$d$a$b$c$a;
    .locals 0

    .line 1
    iput-object p1, p0, La20$b;->d:Li20$d$d$a$b$c;

    return-object p0
.end method

.method public c(Lj20;)Li20$d$d$a$b$c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj20<",
            "Li20$d$d$a$b$e$b;",
            ">;)",
            "Li20$d$d$a$b$c$a;"
        }
    .end annotation

    const-string v0, "Null frames"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, La20$b;->c:Lj20;

    return-object p0
.end method

.method public d(I)Li20$d$d$a$b$c$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, La20$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Li20$d$d$a$b$c$a;
    .locals 0

    .line 1
    iput-object p1, p0, La20$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Li20$d$d$a$b$c$a;
    .locals 1

    const-string v0, "Null type"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, La20$b;->a:Ljava/lang/String;

    return-object p0
.end method
