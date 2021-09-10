.class final Lc20$b;
.super Li20$d$d$a$b$e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj20<",
            "Li20$d$d$a$b$e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$a$b$e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$d$d$a$b$e;
    .locals 5

    .line 1
    iget-object v0, p0, Lc20$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " name"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lc20$b;->b:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string v1, " importance"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lc20$b;->c:Lj20;

    if-nez v1, :cond_2

    const-string v1, " frames"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    new-instance v0, Lc20;

    iget-object v1, p0, Lc20$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lc20$b;->b:Ljava/lang/Integer;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lc20$b;->c:Lj20;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lc20;-><init>(Ljava/lang/String;ILj20;Lc20$a;)V

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

.method public b(Lj20;)Li20$d$d$a$b$e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj20<",
            "Li20$d$d$a$b$e$b;",
            ">;)",
            "Li20$d$d$a$b$e$a;"
        }
    .end annotation

    const-string v0, "Null frames"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc20$b;->c:Lj20;

    return-object p0
.end method

.method public c(I)Li20$d$d$a$b$e$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc20$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Li20$d$d$a$b$e$a;
    .locals 1

    const-string v0, "Null name"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc20$b;->a:Ljava/lang/String;

    return-object p0
.end method
