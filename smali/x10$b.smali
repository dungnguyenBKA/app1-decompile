.class final Lx10$b;
.super Li20$d$d$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Li20$d$d$a$b;

.field private b:Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj20<",
            "Li20$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$a$a;-><init>()V

    return-void
.end method

.method constructor <init>(Li20$d$d$a;Lx10$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Li20$d$d$a$a;-><init>()V

    .line 3
    invoke-virtual {p1}, Li20$d$d$a;->d()Li20$d$d$a$b;

    move-result-object p2

    iput-object p2, p0, Lx10$b;->a:Li20$d$d$a$b;

    .line 4
    invoke-virtual {p1}, Li20$d$d$a;->c()Lj20;

    move-result-object p2

    iput-object p2, p0, Lx10$b;->b:Lj20;

    .line 5
    invoke-virtual {p1}, Li20$d$d$a;->b()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lx10$b;->c:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {p1}, Li20$d$d$a;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lx10$b;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Li20$d$d$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lx10$b;->a:Li20$d$d$a$b;

    if-nez v0, :cond_0

    const-string v0, " execution"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lx10$b;->d:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string v1, " uiOrientation"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Lx10;

    iget-object v3, p0, Lx10$b;->a:Li20$d$d$a$b;

    iget-object v4, p0, Lx10$b;->b:Lj20;

    iget-object v5, p0, Lx10$b;->c:Ljava/lang/Boolean;

    iget-object v1, p0, Lx10$b;->d:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lx10;-><init>(Li20$d$d$a$b;Lj20;Ljava/lang/Boolean;ILx10$a;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/Boolean;)Li20$d$d$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lx10$b;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c(Lj20;)Li20$d$d$a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj20<",
            "Li20$b;",
            ">;)",
            "Li20$d$d$a$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lx10$b;->b:Lj20;

    return-object p0
.end method

.method public d(Li20$d$d$a$b;)Li20$d$d$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lx10$b;->a:Li20$d$d$a$b;

    return-object p0
.end method

.method public e(I)Li20$d$d$a$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lx10$b;->d:Ljava/lang/Integer;

    return-object p0
.end method
