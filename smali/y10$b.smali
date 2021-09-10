.class final Ly10$b;
.super Li20$d$d$a$b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj20<",
            "Li20$d$d$a$b$e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Li20$d$d$a$b$c;

.field private c:Li20$d$d$a$b$d;

.field private d:Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj20<",
            "Li20$d$d$a$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$a$b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$d$d$a$b;
    .locals 8

    .line 1
    iget-object v0, p0, Ly10$b;->a:Lj20;

    if-nez v0, :cond_0

    const-string v0, " threads"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Ly10$b;->b:Li20$d$d$a$b$c;

    if-nez v1, :cond_1

    const-string v1, " exception"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Ly10$b;->c:Li20$d$d$a$b$d;

    if-nez v1, :cond_2

    const-string v1, " signal"

    .line 5
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Ly10$b;->d:Lj20;

    if-nez v1, :cond_3

    const-string v1, " binaries"

    .line 7
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    new-instance v0, Ly10;

    iget-object v3, p0, Ly10$b;->a:Lj20;

    iget-object v4, p0, Ly10$b;->b:Li20$d$d$a$b$c;

    iget-object v5, p0, Ly10$b;->c:Li20$d$d$a$b$d;

    iget-object v6, p0, Ly10$b;->d:Lj20;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ly10;-><init>(Lj20;Li20$d$d$a$b$c;Li20$d$d$a$b$d;Lj20;Ly10$a;)V

    return-object v0

    .line 10
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Lj20;)Li20$d$d$a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj20<",
            "Li20$d$d$a$b$a;",
            ">;)",
            "Li20$d$d$a$b$b;"
        }
    .end annotation

    const-string v0, "Null binaries"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ly10$b;->d:Lj20;

    return-object p0
.end method

.method public c(Li20$d$d$a$b$c;)Li20$d$d$a$b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Ly10$b;->b:Li20$d$d$a$b$c;

    return-object p0
.end method

.method public d(Li20$d$d$a$b$d;)Li20$d$d$a$b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Ly10$b;->c:Li20$d$d$a$b$d;

    return-object p0
.end method

.method public e(Lj20;)Li20$d$d$a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj20<",
            "Li20$d$d$a$b$e;",
            ">;)",
            "Li20$d$d$a$b$b;"
        }
    .end annotation

    const-string v0, "Null threads"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ly10$b;->a:Lj20;

    return-object p0
.end method
