.class final Lt10$b;
.super Li20$d$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$d$a;
    .locals 11

    .line 1
    iget-object v0, p0, Lt10$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " identifier"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lt10$b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " version"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Lt10;

    iget-object v3, p0, Lt10$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lt10$b;->b:Ljava/lang/String;

    iget-object v5, p0, Lt10$b;->c:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lt10$b;->d:Ljava/lang/String;

    iget-object v8, p0, Lt10$b;->e:Ljava/lang/String;

    iget-object v9, p0, Lt10$b;->f:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lt10;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li20$d$a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lt10$a;)V

    return-object v0

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Li20$d$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lt10$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Li20$d$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lt10$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Li20$d$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lt10$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Li20$d$a$a;
    .locals 1

    const-string v0, "Null identifier"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lt10$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Li20$d$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lt10$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Li20$d$a$a;
    .locals 1

    const-string v0, "Null version"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lt10$b;->b:Ljava/lang/String;

    return-object p0
.end method
